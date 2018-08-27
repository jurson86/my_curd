package com.hxkj.data.controller;

import com.alibaba.fastjson.JSON;
import com.hxkj.auth.model.AuthUser;
import com.hxkj.common.constant.Constant;
import com.hxkj.common.controller.BaseController;
import com.hxkj.common.util.FileUtils;
import com.hxkj.common.util.Identities;
import com.hxkj.common.util.search.SearchSql;
import com.hxkj.data.model.DataFile;
import com.jfinal.aop.Before;
import com.jfinal.kit.PathKit;
import com.jfinal.kit.Prop;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.tx.Tx;
import com.jfinal.render.JsonRender;
import com.jfinal.upload.UploadFile;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * DataFile 控制器
 */
public class DataFileController extends BaseController {
    private final static Prop prop = PropKit.use("config.properties");

    /**
     * 列表页
     */
    public void index() {
        render("data/dataFile.html");
    }


    /**
     * 列表数据
     */
    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String sort = getPara("sort");
        String order = getPara("order");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<DataFile> dataFilePage = DataFile.dao.page(pageNumber, pageSize, sort, order, where);
        renderDatagrid(dataFilePage);
    }


    /**
     * 打开新增或者修改弹出框
     */
    public void newModel() {
        String id = getPara("id");
        if (id != null) {
            DataFile dataFile = DataFile.dao.findById(id);
            setAttr("dataFile", dataFile);
        }

        render("data/dataFile_form.html");
    }


    /**
     * 增加
     * 文件过大 没有良好的提示性信息
     */
    public void addAction() throws IOException {
        Map<String, Object> result = new HashMap<String, Object>();
        HashMap<String, String> extMap = new HashMap<String, String>();
        extMap.put("image", prop.get("imageType"));
        extMap.put("media", prop.get("mediaType"));
        extMap.put("file", prop.get("fileType"));
        String limitFileTypes = extMap.get("image") + "," + extMap.get("media") + "," + extMap.get("file");
        UploadFile uploadFile = getFile("file");
        if (uploadFile != null) {
            String orginFilename = uploadFile.getOriginalFileName();                                    // 文件原名
            String fileSuf = orginFilename.substring(orginFilename.lastIndexOf(".") + 1).toLowerCase(); // 文件后缀
            if (!Arrays.asList(limitFileTypes.split(",")).contains(fileSuf)) {
                result.put("error", 1);
                result.put("message", "只允许后缀为:<br/>" + extMap.get("image") + "<br/>" + extMap.get("media") + "<br/>" + extMap.get("file") + "<br/>格式文件");
                uploadFile.getFile().delete();
            } else {
                // 文件量大、上传频繁 这种分发方式并不合适（文件copy后删除原文件占资源，按类型分类可能导致某个目录下文件量超多）
                SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
                String newFileName = df.format(new Date()) + "_" + new Random().nextInt(1000) + "." + fileSuf;
                String pre;
                if (Arrays.asList(extMap.get("image").split(",")).contains(fileSuf)) {
                    pre = prop.get("imagePath");
                } else if (Arrays.asList(extMap.get("media").split(",")).contains(fileSuf)) {
                    pre = prop.get("mediaPath");
                } else if (Arrays.asList(extMap.get("file").split(",")).contains(fileSuf)) {
                    pre = prop.get("filePath");
                } else {
                    pre = "upload/unlikeFile";
                }
                String relativePath = pre + "/" + newFileName;
                pre = PathKit.getWebRootPath() + '/' + pre;
                newFileName = pre + "/" + newFileName;
                File savefile = new File(newFileName);

                org.apache.commons.io.FileUtils.copyFile(uploadFile.getFile(), savefile);

                if (uploadFile.getFile().exists()) {
                    uploadFile.getFile().delete();
                }

                DataFile dataFile = new DataFile();
                dataFile.setId(Identities.id());
                AuthUser authUser = getSessionUser();
                dataFile.setUserId(authUser.getId());
                dataFile.setOriginalFilename(orginFilename);
                dataFile.setPath(relativePath);
                dataFile.setMime(FileUtils.getMime(savefile.getAbsolutePath()));
                dataFile.setSize(org.apache.commons.io.FileUtils.sizeOfAsBigInteger(savefile));
                dataFile.setRemark(getPara("remark"));
                dataFile.setType(fileSuf);
                dataFile.setCreateTime(new Date());
                boolean saveFlag = dataFile.save();
                if (!saveFlag) {
                    result.put("error", 1);
                    result.put("message", "数据存储失败");
                    savefile.delete();
                } else {
                    result.put("error", 0);
                }
            }
        } else {
            result.put("error", 1);
            result.put("message", "请选择文件");
        }
        render(new JsonRender(JSON.toJSONString(result)).forIE());
    }

    /**
     * 删除
     */
    @Before(Tx.class)
    public void deleteAction() {
        boolean opFlag = true;
        String ids = getPara("ids");
        List<DataFile> dataFiles;
        if (ids.contains(",")) {
            ids = ids.replaceAll(",", "','");
            ids = "'" + ids + "'";
            dataFiles = DataFile.dao.findByIds(ids);
        } else {
            DataFile dataFile = DataFile.dao.findById(ids);
            dataFiles = new ArrayList<DataFile>();
            dataFiles.add(dataFile);
        }
        // 记录删除
        for (DataFile dataFile : dataFiles) {
            opFlag = dataFile.delete();
            // 失败一次 立刻回滚（正常情况不该是异常)
            if (!opFlag) {
                throw new RuntimeException("删除文件失败异常，文件ids:" + ids);
            }
        }
        // 文件删除
        File tempFile;
        for (DataFile dataFile : dataFiles) {
            tempFile = new File(PathKit.getWebRootPath() + File.separator + dataFile.getPath());
            if (tempFile.exists()) {
                tempFile.delete();
            }
        }
        if (opFlag) {
            renderText(Constant.DELETE_SUCCESS);
        } else {
            renderText(Constant.DELETE_FAIL);
        }
    }

    /**
     * 修改
     */
    public void updateAction() {
        DataFile dataFile = getBean(DataFile.class, "");
        dataFile.setCreateTime(new Date());
        boolean updateFlag = dataFile.update();
        if (updateFlag) {
            renderText(Constant.UPDATE_SUCCESS);
        } else {
            renderText(Constant.UPDATE_FAIL);
        }
    }


    /**
     * 系统允许上传的文件类型，供combobox 使用
     */
    public void fileTypeData() {
        Prop prop = PropKit.use("config.properties");
        String imageTypes = prop.get("imageType");
        String mediaTypes = prop.get("mediaType");
        String fileTypes = prop.get("fileType");
        String[] types = (imageTypes + "," + mediaTypes + "," + fileTypes).split(",");
        List<Map<String, String>> data = new ArrayList<Map<String, String>>();
        for (String type : types) {
            Map<String, String> dataItem = new HashMap<String, String>();
            dataItem.put("label", type);
            dataItem.put("value", type);
            data.add(dataItem);
        }
        renderJson(data);
    }
}
