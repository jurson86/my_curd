package com.hxkj.common.util;

import org.apache.log4j.Logger;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * 文件操作工具
 */
public class FileUtils {
    private static Logger LOG = Logger.getLogger(FileUtils.class);

    /**
     * 通过文件全路径 获得文件的 MIME(contentType)类型
     * jdk7
     * @param absolutePath 文件全路径
     * @return
     */
    public static String getMime(String absolutePath) {
        Path path = Paths.get(absolutePath);
        String contentType = null;
        try {
            contentType = Files.probeContentType(path);
        } catch (IOException e) {
            LOG.error(e.getMessage(), e);
        }
        return contentType;
    }

}
