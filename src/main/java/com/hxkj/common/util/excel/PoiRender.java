package com.hxkj.common.util.excel;

import com.google.common.base.Preconditions;
import com.hxkj.common.util.FileUtils;
import com.hxkj.common.util.StringUtils;
import com.jfinal.render.Render;
import com.jfinal.render.RenderException;
import org.apache.log4j.Logger;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

/**
 * 格式经典 POI render, jfinal excel 导出，导出数据为文本类型
 * 格式：单sheet，最大65535行，前几行为标题，标题行之后行为数据
 */
public class PoiRender extends Render {

    private final static String CONTENT_TYPE = "application/msexcel;charset=" + getEncoding();
    private final static Logger LOG = Logger.getLogger(PoiRender.class);

    // ? 必须是 Map 或者 Model 或者 Record， 数据值必须是 基础类型 或者 基础包装 或者 日期类型
    private final List<?> data;

    // excel 文件中标题列
    private String[] headers;

    // sheet 名
    private String sheetName = "sheet1";

    // 单元格宽度
    private int cellWidth;

    // 数据 中 标题列
    private String[] columns = new String[]{};

    // 文件默认名
    private String fileName = "file1.xls";

    // 列占 行数
    private int headerRow;

    // 日期格式化
    private String dateFormat = "yyyy-MM-dd HH:mm:ss";

    private PoiRender(List<?> data) {
        this.data = data;
    }

    public static PoiRender me(List<?> data) {
        return new PoiRender(data);
    }

    public PoiRender headerRow(int headerRow) {
        this.headerRow = headerRow;
        return this;
    }

    public PoiRender columns(String... columns) {
        this.columns = columns;
        return this;
    }

    public PoiRender sheetName(String sheetName) {
        this.sheetName = sheetName;
        return this;
    }

    public PoiRender cellWidth(int cellWidth) {
        this.cellWidth = cellWidth;
        return this;
    }

    public PoiRender fileName(String fileName) {
        this.fileName = fileName;
        return this;
    }

    public PoiRender dateFormat(String dateFormat) {
        this.dateFormat = dateFormat;
        return this;
    }

    @Override
    public void render() {
        Preconditions.checkState(FileUtils.getExtensionName(fileName).equals("xls"), "filename 必须以 xls 为后缀.");

        response.reset();
        fileName = StringUtils.encodeFileName(request, fileName);
        response.setHeader("Content-disposition", "attachment;" + fileName);
        response.setContentType(CONTENT_TYPE);
        OutputStream os = null;
        try {
            os = response.getOutputStream();
            PoiKit.with(data).sheetName(sheetName).headerRow(headerRow).headers(headers).columns(columns).dateFmt(dateFormat)
                    .cellWidth(cellWidth).export().write(os);
        } catch (Exception e) {
            LOG.error(e.getMessage(), e);
            throw new RenderException(e);
        } finally {
            try {
                if (os != null) {
                    os.flush();
                    os.close();
                }
            } catch (IOException e) {
                LOG.error(e.getMessage(), e);
            }

        }
    }

    public PoiRender headers(String... headers) {
        this.headers = headers;
        return this;
    }
}
