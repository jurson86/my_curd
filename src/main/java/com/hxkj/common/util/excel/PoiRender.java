package com.hxkj.common.util.excel;

import com.jfinal.render.Render;
import com.jfinal.render.RenderException;
import org.apache.log4j.Logger;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

@SuppressWarnings("serial")
public class PoiRender extends Render {

    private final static String CONTENT_TYPE = "application/msexcel;charset=" + getEncoding();
    protected final Logger LOG = Logger.getLogger(getClass());
    private List<?> data;
    private String[] headers;
    private String sheetName = "sheet1";
    private int cellWidth;
    private String[] columns = new String[]{};
    private String fileName = "file1.xls";
    private int headerRow;

    public PoiRender(List<?> data) {
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

    @Override
    public void render() {
        response.reset();
        response.setHeader("Content-disposition", "attachment; filename=" + fileName);
        response.setContentType(CONTENT_TYPE);
        OutputStream os = null;
        try {
            os = response.getOutputStream();
            PoiKit.with(data).sheetName(sheetName).headerRow(headerRow).headers(headers).columns(columns)
                    .cellWidth(cellWidth).export().write(os);
        } catch (Exception e) {
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
