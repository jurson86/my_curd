package com.hxkj.system.controller;

import com.alibaba.fastjson.JSON;
import com.hxkj.common.constant.Constant;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.SearchSql;
import com.hxkj.system.model.SysFile;
import com.hxkj.system.model.SysUser;
import com.jfinal.aop.Before;
import com.jfinal.kit.PathKit;
import com.jfinal.kit.Prop;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.render.JsonRender;
import com.jfinal.upload.UploadFile;
import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * SysFile 控制器
 */
public class SysFileController extends BaseController {
    private final static Prop prop = PropKit.use("config.properties");

    /**
     * 列表页
     */
    public void index() {
        render("system/sysFile.html");
    }


    /**
     * 列表数据
     */
    @Before(SearchSql.class)
    public void query() {
        int pageNumber = getAttr("pageNumber");
        int pageSize = getAttr("pageSize");
        String where = getAttr(Constant.SEARCH_SQL);
        Page<SysFile> sysFilePage = SysFile.dao.page(pageNumber, pageSize, where);

        renderDatagrid(sysFilePage);
    }


    /**
     * 打开新增或者修改弹出框
     */
    public void newModel() {
        String id = getPara("id");
        if (id != null) {
            SysFile sysFile = SysFile.dao.findById(id);
            setAttr("sysFile", sysFile);
        }

        render("system/sysFile_form.html");
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
            if (!Arrays.<String>asList(limitFileTypes.split(",")).contains(fileSuf)) {
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

                FileUtils.copyFile(uploadFile.getFile(), savefile);

                if (uploadFile.getFile().exists()) {
                    uploadFile.getFile().delete();
                }

                SysFile sysFile = new SysFile();
                SysUser sysUser = getSessionUser();
                sysFile.setUserId(sysUser.getId());
                sysFile.setOriginalFilename(orginFilename);
                sysFile.setPath(relativePath);
                sysFile.setRemark(getPara("remark"));
                sysFile.setType(fileSuf);
                sysFile.setCreateTime(new Date());
                boolean saveFlag = sysFile.save();
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
    public void deleteAction() {
        String id = getPara("id");
        SysFile sysFile = SysFile.dao.findById(id);
        String filePath = PathKit.getWebRootPath() + File.separator + sysFile.getPath();
        Boolean delflag = sysFile.delete();
        if (delflag) {
            File file = new File(filePath);
            if (file.exists()) {
                file.delete();
            }
            renderText(Constant.DELETE_SUCCESS);
        } else {
            renderText(Constant.DELETE_FAIL);
        }
    }

    /**
     * 修改
     */
    public void updateAction() {
        SysFile sysFile = getBean(SysFile.class, "");
        boolean updateFlag = sysFile.update();
        if (updateFlag) {
            renderText(Constant.UPDATE_SUCCESS);
        } else {
            renderText(Constant.UPDATE_FAIL);
        }
    }


    /**
     * 系统运输上传的文件类型，供combobox 使用
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
