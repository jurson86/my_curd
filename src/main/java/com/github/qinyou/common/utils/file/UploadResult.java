package com.github.qinyou.common.utils.file;

import lombok.Data;

/**
 * 文件上传结果封装
 */
@Data
public class UploadResult {
    private String name;   // 文件原名
    private String path;   // 文件路径
    private String uri;    // 文件web下路径
    private String size;   // 文件大小 显示名 例 10KB、2MB、3GB
    private Long sizeL;    // 文件大小
}

