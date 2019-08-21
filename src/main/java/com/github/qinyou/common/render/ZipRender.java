package com.github.qinyou.common.render;

import com.github.qinyou.common.utils.WebUtils;
import com.github.qinyou.common.utils.ZipUtils;
import com.jfinal.render.Render;
import com.jfinal.render.RenderException;
import lombok.extern.slf4j.Slf4j;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;


/**
 * zip render, 字符串 + 文件名 生成压缩包
 * @author chuang
 */
@SuppressWarnings("unused")
@Slf4j
public class ZipRender extends Render {
    private final static String CONTENT_TYPE = "application/x-zip-compressed;charset=" + getEncoding();

    private String fileName;      //  zip 压缩文件名

    // data 必须 filenames size 一致, filenames 可以有层级
    private List<String> data;     // 字符串数据 集合
    private List<String> filenames; // 文件名 集合

    public static ZipRender me() {
        return new ZipRender();
    }

    public ZipRender fileName(String fileName) {
        this.fileName = fileName;
        return this;
    }

    public ZipRender data(List<String> data) {
        this.data = data;
        return this;
    }

    public ZipRender filenames(List<String> filenames) {
        this.filenames = filenames;
        return this;
    }

    @SuppressWarnings("Duplicates")
    @Override
    public void render() {
        response.reset();
        fileName = WebUtils.buildDownname(request, fileName);
        response.setHeader("Content-disposition", "attachment;" + fileName);
        response.setContentType(CONTENT_TYPE);
        OutputStream os = null;
        try {
            os = response.getOutputStream();
            ZipUtils.toZip(data, filenames, os);
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            throw new RenderException(e);
        } finally {
            try {
                if (os != null) {
                    os.flush();
                    os.close();
                }
            } catch (IOException e) {
                log.error(e.getMessage(), e);
            }
        }
    }

}
