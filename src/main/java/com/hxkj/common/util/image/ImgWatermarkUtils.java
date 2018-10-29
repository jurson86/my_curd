package com.hxkj.common.util.image;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
import org.apache.log4j.Logger;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;

/**
 * 图片水印
 */
public abstract class ImgWatermarkUtils {

    private final static Logger LOG = Logger.getLogger(ImgWatermarkUtils.class);

    /**
     * 把图片印刷到图片上
     *
     * @param pressImgPath  -- 水印文件
     * @param targetImgPath -- 目标文件
     * @param x
     * @param y
     */
    public static void pressImage(String pressImgPath, String targetImgPath, int x, int y) {
        try {
            // 目标文件
            File file = new File(targetImgPath);
            Image srcImg = ImageIO.read(file);
            int width = srcImg.getWidth(null);
            int height = srcImg.getHeight(null);
            BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
            Graphics g = image.createGraphics();
            g.drawImage(srcImg, 0, 0, width, height, null);

            // 水印文件
            File filePress = new File(pressImgPath);
            Image pressImg = ImageIO.read(filePress);
            int width_press = pressImg.getWidth(null);
            int height_press = pressImg.getHeight(null);
            g.drawImage(pressImg, width - width_press - x, height - height_press - y, width_press, height_press, null);
            g.dispose();

            // 写入到文件
            FileOutputStream out = new FileOutputStream(targetImgPath);
            JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
            encoder.encode(image);
            out.close();

        } catch (Exception e) {
            LOG.error(e.getMessage(), e);
            throw new RuntimeException("添加图片水印异常");
        }
    }

    /**
     * 打印文字水印图片，右下角计算坐标
     *
     * @param pressText     --文字
     * @param targetImgPath -- 目标图片路径
     * @param fontName      -- 字体名
     * @param fontStyle     -- 字体样式
     * @param color         -- 字体颜色
     * @param fontSize      -- 字体大小
     * @param x             -- 偏移量
     * @param y
     */
    public static void pressText(String pressText, String targetImgPath, String fontName, int fontStyle, int color, int fontSize, int x, int y) {
        try {
            File _file = new File(targetImgPath);
            Image src = ImageIO.read(_file);
            int width = src.getWidth(null);
            int height = src.getHeight(null);
            BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
            Graphics g = image.createGraphics();
            g.drawImage(src, 0, 0, width, height, null);
            g.setColor(Color.RED);
            g.setFont(new Font(fontName, fontStyle, fontSize));
            g.drawString(pressText, width - fontSize - x, height - fontSize / 2 - y);
            g.dispose();

            FileOutputStream out = new FileOutputStream(targetImgPath);
            JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
            encoder.encode(image);
            out.close();
        } catch (Exception e) {
            LOG.error(e.getMessage(), e);
            throw new RuntimeException("添加文字水印异常");
        }
    }
}
