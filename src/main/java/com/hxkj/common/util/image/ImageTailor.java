package com.hxkj.common.util.image;

import org.apache.log4j.Logger;

import javax.imageio.ImageIO;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Iterator;

/**
 * 图片裁剪
 */
public abstract class ImageTailor {

    private final static Logger LOG = Logger.getLogger(ImageTailor.class);

    /**
     * 图片裁剪
     * @param srcPath  源图片路径名称如
     * @param savePath 剪切图片存放路径名称
     * @param x        剪切点x坐标
     * @param y
     * @param width    剪切点大小
     * @param height
     * @throws IOException
     */
    public static void cut(String srcPath, String savePath, int x, int y, int width, int height) {
        String houZhui = srcPath.substring(srcPath.lastIndexOf(".") + 1);// 后缀
        FileInputStream is = null;
        ImageInputStream iis = null;
        try {
            is = new FileInputStream(srcPath);
            Iterator<ImageReader> it = ImageIO.getImageReadersByFormatName("jpg");
            ImageReader reader = it.next();
            iis = ImageIO.createImageInputStream(is);
            reader.setInput(iis, true);
            ImageReadParam param = reader.getDefaultReadParam();
            Rectangle rect = new Rectangle(x, y, width, height);
            param.setSourceRegion(rect);
            BufferedImage bi = reader.read(0, param);
            ImageIO.write(bi, houZhui, new File(savePath)); // "jpg"
        } catch (Exception e) {
            LOG.error(e.getMessage(),e);
            throw new RuntimeException("裁剪图片异常");
        } finally {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e) {
                    LOG.error(e.getMessage(),e);
                }
            }
            if (iis != null) {
                try {
                    iis.close();
                } catch (IOException e) {
                    LOG.error(e.getMessage(),e);
                }
            }
        }
    }

}
