package com.hxkj.cms.controller;

import com.hxkj.auth.model.AuthUser;
import com.hxkj.common.util.BaseController;
import com.hxkj.common.util.FileTool;
import com.hxkj.common.util.Identities;
import com.hxkj.data.model.DataFile;
import com.jfinal.aop.Clear;
import com.jfinal.kit.PathKit;
import com.jfinal.kit.Prop;
import com.jfinal.kit.PropKit;
import com.jfinal.upload.UploadFile;
import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 图片文件上传
 * @author chuang
 * @date 2018-06-20 18:56:48
 */
@Clear
public class ImgUploadController extends BaseController {

    private  final static Logger LOG = Logger.getLogger(ImgUploadController.class);

    public void index(){
        Prop prop = PropKit.use("config.properties");
        Map<String,Object> ret = new HashMap<>();
        UploadFile uploadFile = getFile("upload");
        if(uploadFile!=null){
            String imgTypes =  prop.get("imageType");
            String filename = uploadFile.getOriginalFileName();
            String filenameSuf = filename.substring(filename.lastIndexOf(".") + 1).toLowerCase();
            if (!Arrays.asList(imgTypes.trim().split(",")).contains(filenameSuf)) {
                // 文件格式错误
                ret.put("uploaded",false);
                ret.put("url","");
                uploadFile.getFile().delete();
            }else{
                SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
                String newFileName = df.format(new Date()) + "_" + new Random().nextInt(1000) + "." + filenameSuf;
                String pre = prop.get("imagePath");
                String relativePath = pre + "/" + newFileName;
                pre = PathKit.getWebRootPath() + '/' + pre;
                newFileName = pre + "/" + newFileName;
                File newFile = new File(newFileName);
                try{
                    FileUtils.copyFile(uploadFile.getFile(), newFile);
                    if (uploadFile.getFile().exists()) {
                        uploadFile.getFile().delete();
                    }

                    DataFile dataFile = new DataFile();
                    dataFile.setId(Identities.id());
                    AuthUser authUser = getSessionUser();
                    dataFile.setUserId(authUser.getId());
                    dataFile.setOriginalFilename(filename);
                    dataFile.setPath(relativePath);
                    dataFile.setMime(FileTool.getMime(newFile.getAbsolutePath()));
                    dataFile.setSize(FileUtils.sizeOfAsBigInteger(newFile));
                    dataFile.setRemark(getPara("remark"));
                    dataFile.setType(filenameSuf);
                    dataFile.setCreateTime(new Date());
                    boolean saveFlag = dataFile.save();
                    if (saveFlag) {
                        ret.put("uploaded",true);
                        ret.put("url","/"+relativePath);
                    } else {
                        ret.put("uploaded",false);
                        ret.put("url","");
                    }
                }catch(IOException e){
                    e.printStackTrace();
                    LOG.error(e.getMessage(),e);
                    ret.put("uploaded",false);
                    ret.put("url","");
                }
            }
        }else{
            ret.put("uploaded",false);
            ret.put("url","");
        }

        renderJson(ret);
    }
}
