package com.hxkj.common.util;


import org.apache.log4j.Logger;

import java.io.*;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/**
 * 文件压缩方法
 * https://www.cnblogs.com/zeng1994/p/7862288.html 有扩展
 *
 * @author chuang
 * @date 2018-06-20 18:56:48
 */
public class ZipUtils {

    private final static Logger LOG = Logger.getLogger(ZipUtils.class);

    private static final int BUFFER_SIZE = 2 * 1024;

    /**
     * 压缩文件夹
     *
     * @param srcDir           压缩文件夹路径
     * @param out              压缩文件输出流
     * @param KeepDirStructure 是否保留原来的目录结构
     *                         true:保留目录结构;
     *                         false:所有文件跑到压缩包根目录下(注意：不保留目录结构可能会出现同名文件,会压缩失败)
     */
    public static void toZip(String srcDir, OutputStream out, boolean KeepDirStructure) {
        ZipOutputStream zos = null;
        try {
            zos = new ZipOutputStream(out);
            File sourceFile = new File(srcDir);
            compress(sourceFile, zos, sourceFile.getName(), KeepDirStructure);
        } catch (Exception e) {
            LOG.error(e.getMessage(), e);
            throw new RuntimeException("压缩过程发生异常");
        } finally {
            close(zos);
        }
    }

    /**
     * 文件列表压缩
     *
     * @param srcFiles 需要压缩的文件列表
     * @param out      压缩文件输出流
     */
    public static void toZip(List<File> srcFiles, OutputStream out) {
        ZipOutputStream zos = null;
        try {
            zos = new ZipOutputStream(out);
            for (File srcFile : srcFiles) {
                byte[] buf = new byte[BUFFER_SIZE];
                zos.putNextEntry(new ZipEntry(srcFile.getName()));
                int len;
                FileInputStream in = new FileInputStream(srcFile);
                while ((len = in.read(buf)) != -1) {
                    zos.write(buf, 0, len);
                }
                zos.closeEntry();
                in.close();
            }
        } catch (Exception e) {
            LOG.error(e.getMessage(), e);
            throw new RuntimeException("压缩过程发生异常");
        } finally {
            close(zos);
        }
    }

    /**
     * 字符串输出 到  压缩文件中
     * 实际中用途：数据表中多条数据打包下载，一条数据为一个文件。
     * 例如 一些官方性的系统支持 指定文件夹，将文件夹下的所有文件数据导入其系统的功能。
     * 可将本系统中多条数据按照某种格式批量导出到压缩包
     *
     * @param srcDatas     文本数据集合
     * @param srcFilenames 文件名集合
     * @param out
     * @throws RuntimeException
     */
    public static void toZip(List<String> srcDatas, List<String> srcFilenames, OutputStream out) {
        if (srcDatas == null || srcFilenames == null
                || srcDatas.size() == 0 || srcFilenames.size() == 0
                || srcDatas.size() != srcFilenames.size()) {
            throw new IllegalArgumentException();
        }
        ZipOutputStream zos = null;
        try {
            zos = new ZipOutputStream(out);
            for (int i = 0; i < srcDatas.size(); i++) {
                zos.putNextEntry(new ZipEntry(srcFilenames.get(i)));
                byte[] buf = srcDatas.get(i).getBytes(Charset.forName("UTF-8"));
                zos.write(buf);
                zos.closeEntry();
            }
        } catch (Exception e) {
            LOG.error(e.getMessage(), e);
            throw new RuntimeException("压缩过程发生异常");
        } finally {
            close(zos);
        }
    }


    /**
     * 递归压缩方法
     *
     * @param sourceFile       源文件
     * @param zos              zip输出流
     * @param name             压缩后的名称
     * @param KeepDirStructure 是否保留原来的目录结构,true:保留目录结构;
     *                         false:所有文件跑到压缩包根目录下(注意：不保留目录结构可能会出现同名文件,会压缩失败)
     * @throws Exception
     */
    private static void compress(File sourceFile, ZipOutputStream zos, String name,
                                 boolean KeepDirStructure) throws Exception {
        byte[] buf = new byte[BUFFER_SIZE];
        if (sourceFile.isFile()) {
            // 向zip输出流中添加一个zip实体，构造器中name为zip实体的文件的名字
            zos.putNextEntry(new ZipEntry(name));
            // copy文件到zip输出流中
            int len;
            FileInputStream in = new FileInputStream(sourceFile);
            while ((len = in.read(buf)) != -1) {
                zos.write(buf, 0, len);
            }
            // Complete the entry
            zos.closeEntry();
            in.close();
        } else {
            File[] listFiles = sourceFile.listFiles();
            if (listFiles == null || listFiles.length == 0) {
                // 需要保留原来的文件结构时,需要对空文件夹进行处理
                if (KeepDirStructure) {
                    // 空文件夹的处理
                    zos.putNextEntry(new ZipEntry(name + "/"));
                    // 没有文件，不需要文件的copy
                    zos.closeEntry();
                }

            } else {
                for (File file : listFiles) {
                    // 判断是否需要保留原来的文件结构
                    if (KeepDirStructure) {
                        // 注意：file.getName()前面需要带上父文件夹的名字加一斜杠,
                        // 不然最后压缩包中就不能保留原来的文件结构,即：所有文件都跑到压缩包根目录下了
                        compress(file, zos, name + "/" + file.getName(), KeepDirStructure);
                    } else {
                        compress(file, zos, file.getName(), KeepDirStructure);
                    }

                }
            }
        }
    }

    /**
     * 关闭输出流
     *
     * @param out
     */
    private static void close(OutputStream out) {
        if (out != null) {
            try {
                out.close();
            } catch (IOException e) {
                LOG.error(e.getMessage(), e);
            }
        }
    }

    public static void main(String[] args) throws FileNotFoundException {
        FileOutputStream out = new FileOutputStream(new File("D:/test.zip"));
        List<String> srcDatas = new ArrayList<>();
        List<String> srcFilenames = new ArrayList<>();
        for (int i = 0; i < 100; i++) {
            System.out.println("----" + i);
            StringBuilder stringBuilder = new StringBuilder();
            for (int j = 0; j < 100; j++) {
                stringBuilder.append(j + "-中文测试-\r\n" + Identities.id() + "\r\n");
            }
            srcDatas.add(stringBuilder.toString());
            srcFilenames.add(i + ".log");
        }

        toZip(srcDatas, srcFilenames, out);
        System.out.println("---over---");
    }
}