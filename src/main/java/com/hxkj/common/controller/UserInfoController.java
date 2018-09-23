package com.hxkj.common.controller;

import com.alibaba.fastjson.JSON;
import com.hxkj.auth.model.AuthUser;
import com.hxkj.common.interceptor.PermissionInterceptor;
import com.hxkj.common.util.DateTimeUtils;
import com.hxkj.common.util.FileUtils;
import com.hxkj.common.util.Identities;
import com.hxkj.data.model.DataFile;
import com.jfinal.aop.Clear;
import com.jfinal.kit.PathKit;
import com.jfinal.kit.Prop;
import com.jfinal.kit.PropKit;
import com.jfinal.kit.StrKit;
import com.jfinal.render.JsonRender;
import com.jfinal.upload.UploadFile;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 修改 用户信息
 */
@Clear(PermissionInterceptor.class)
public class UserInfoController extends BaseController {
    private final static Prop prop = PropKit.use("config.properties");
    private final static String INDEX = "common/userInfo.html";

    public void index() {
        AuthUser authUser = getSessionUser();
        setAttr("authUser", authUser);
        render(INDEX);
    }


    public void editAvatar() throws IOException {
        Map<String, Object> result = new HashMap<String, Object>();
        HashMap<String, String> extMap = new HashMap<String, String>();
        extMap.put("image", prop.get("imageType"));
        String limitFileTypes = extMap.get("image");
        UploadFile uploadFile = getFile("file");
        if (uploadFile != null) {
            String orginFilename = uploadFile.getOriginalFileName();     // 文件原名
            String fileSuf = FileUtils.getExtensionName(orginFilename);  // 文件后缀
            if (!Arrays.asList(limitFileTypes.split(",")).contains(fileSuf)) {
                result.put("success", false);
                result.put("msg", "只允许后缀为 " + extMap.get("image") + " 格式文件");
                uploadFile.getFile().delete();
            } else {
                String newFileName = DateTimeUtils.format(new Date(), DateTimeUtils.pattern_ymdhmsS_noLine) + "." + fileSuf;
                String pre;
                if (Arrays.asList(extMap.get("image").split(",")).contains(fileSuf)) {
                    pre = prop.get("imagePath");
                } else {
                    result.put("success", false);
                    result.put("msg", "只允许后缀为 " + extMap.get("image") + " 格式文件");
                    uploadFile.getFile().delete();
                    throw new RuntimeException("文件类型非法");
                }

                // 文件存储的新 相对路径
                String relativePath = pre + "/" + newFileName;
                // 文件存储的新绝对路径
                File savefile = new File(PathKit.getWebRootPath() + File.separator
                        + relativePath);

                // 文件拷贝到新路径下，删除旧文件
                org.apache.commons.io.FileUtils.copyFile(uploadFile.getFile(), savefile);
                if (uploadFile.getFile().exists()) {
                    uploadFile.getFile().delete();
                }

                // 保存数据库记录
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
                    result.put("success", false);
                    result.put("msg", "文件存储失败");
                    savefile.delete();
                } else {
                    result.put("success", true);
                    result.put("path", dataFile.getPath());
                    result.put("msg", "文件存储成功");
                }
            }
        } else {
            result.put("success", false);
            result.put("msg", "请选择文件");
        }
        render(new JsonRender(JSON.toJSONString(result)).forIE());
    }


    public void editInfoAction() {
        String id = getPara("userId");
        if (StrKit.isBlank(id)) {
            renderText("参数错误");
            return;
        }
        AuthUser sysUser = AuthUser.dao.findById(id);
        if (sysUser == null) {
            renderText("参数错误");
            return;
        }

        // set 会触发 生成 sql 语句
        sysUser.setAvatar(getPara("avatar"));
        sysUser.setPhone(getPara("phone"));
        sysUser.setEmail(getPara("email"));
        sysUser.setName(getPara("name"));

        boolean flag = sysUser.update();
        if (flag) {
            AuthUser authUser = getSessionUser();
            authUser.setName(sysUser.getName());
            authUser.setEmail(sysUser.getEmail());
            authUser.setPhone(sysUser.getPhone());
            authUser.setAvatar(sysUser.getAvatar());
            renderText("信息修改成功");
        } else {
            renderText("信息修改失败");
        }
    }
}
