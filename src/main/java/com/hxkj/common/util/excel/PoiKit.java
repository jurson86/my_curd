package com.hxkj.common.util.excel;

import com.google.common.base.Preconditions;
import com.hxkj.common.util.DateTimeUtils;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Record;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.util.CellRangeAddress;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;


/**
 * Poi 导出工具，导出数据全部为文本格式
 */
public class PoiKit {

    // 标题 占 几行
    private static final int HEADER_ROW = 1;
    // 最大行数
    private static final int MAX_ROWS = 65536;


    // 默认日期格式化
    private String dateFormat = "yyyy-MM-dd HH:mm:ss";

    // 默认sheet 名字
    private String sheetName = "new sheet";

    // 宽度
    private int cellWidth = 8000;

    //  标题占几行
    private int headerRow;

    // 标题列名（对应excel中实际的列明）
    private String[] headers = new String[]{};

    // 标题列名 （对应数据中的字段名)
    private String[] columns;

    // 数据列表 (? 可以是 Map，Model,Record 类型，字段类型 必须是基础类型 基础类型包装类 或日期类型)
    private List<?> data;


    public PoiKit(List<?> data) {
        this.data = data;
    }

    public static PoiKit with(List<?> data) {
        return new PoiKit(data);
    }

    /**
     * 判断字符串是否为纯数字
     *
     * @param str
     * @return
     */
    private static boolean isNumeric(String str) {
        for (int i = str.length(); --i >= 0; ) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /**
     * 判断是否日期类型
     *
     * @param obj
     * @return
     */
    private static boolean isDate(Object obj) {
        if (obj instanceof Date) {
            return true;
        }
        return false;
    }

    public PoiKit dateFmt(String dateFormat) {
        this.dateFormat = dateFormat;
        return this;
    }

    public PoiKit sheetName(String sheetName) {
        this.sheetName = sheetName;
        return this;
    }

    public PoiKit cellWidth(int cellWidth) {
        this.cellWidth = cellWidth;
        return this;
    }

    public PoiKit headerRow(int headerRow) {
        this.headerRow = headerRow;
        return this;
    }

    public PoiKit headers(String[] headers) {
        this.headers = headers;
        return this;
    }

    public PoiKit columns(String[] columns) {
        this.columns = columns;
        return this;
    }

    /**
     * 处理数据类型是 map
     *
     * @param columns
     * @param row
     * @param obj
     */
    private void processAsMap(String[] columns, HSSFRow row, Object obj) {
        HSSFCell cell;
        Map<String, Object> map = (Map<String, Object>) obj;
        if (columns.length == 0) {// 未设置显示列，默认全部
            Set<String> keys = map.keySet();
            int columnIndex = 0;
            for (String key : keys) {
                cell = row.createCell(columnIndex);

                if (map.get(key) == null) {
                    cell.setCellValue("");
                } else if (isDate(map.get(key))) {
                    cell.setCellValue(DateTimeUtils.format((Date) map.get(key), dateFormat));
                } else {
                    cell.setCellValue(map.get(key).toString());
                }

                columnIndex++;
            }
        } else {
            for (int j = 0, lenJ = columns.length; j < lenJ; j++) {
                cell = row.createCell(j);
                if (map.get(columns[j]) == null) {
                    cell.setCellValue("");
                } else if (isDate(map.get(columns[j]))) {
                    cell.setCellValue(DateTimeUtils.format((Date) map.get(columns[j]), dateFormat));
                } else {
                    cell.setCellValue(map.get(columns[j]).toString());
                }
            }
        }
    }

    /**
     * 处理数据类型是 jfinal model
     *
     * @param columns
     * @param row
     * @param obj
     */
    private void processAsModel(String[] columns, HSSFRow row, Object obj) {
        HSSFCell cell;
        Model<?> model = (Model<?>) obj;
        Set<Entry<String, Object>> entries = model._getAttrsEntrySet();
        if (columns.length == 0) {// 未设置显示列，默认全部
            int columnIndex = 0;
            for (Entry<String, Object> entry : entries) {
                cell = row.createCell(columnIndex);
                String value;
                if (entry.getValue() == null) {
                    value = "";
                } else if (isDate(entry.getValue())) {
                    value = DateTimeUtils.format((Date) entry.getValue(), dateFormat);
                } else {
                    value = entry.getValue().toString();
                }
                cell.setCellValue(value);
                columnIndex++;
            }
        } else {
            for (int j = 0, lenJ = columns.length; j < lenJ; j++) {
                cell = row.createCell(j);
                String value;
                if (model.get(columns[j]) == null) {
                    value = "";
                } else if (isDate(model.get(columns[j]))) {
                    value = DateTimeUtils.format(model.get(columns[j]), dateFormat);
                } else {
                    value = model.get(columns[j]).toString();
                }
                cell.setCellValue(value + "");
            }
        }
    }

    /**
     * 处理数据类型是 jfinal record
     *
     * @param columns
     * @param row
     * @param obj
     */
    private void processAsRecord(String[] columns, HSSFRow row, Object obj) {
        HSSFCell cell;
        Record record = (Record) obj;
        Map<String, Object> map = record.getColumns();
        if (columns.length == 0) {// 未设置显示列，默认全部
            record.getColumns();
            Set<String> keys = map.keySet();
            int columnIndex = 0;
            for (String key : keys) {
                cell = row.createCell(columnIndex);
                String value;
                if (record.get(key) == null) {
                    value = "";
                } else if (isDate(record.get(key))) {
                    value = DateTimeUtils.format(record.get(key), dateFormat);
                } else {
                    value = record.get(key).toString();
                }
                cell.setCellValue(value);
                columnIndex++;
            }
        } else {
            for (int j = 0, lenJ = columns.length; j < lenJ; j++) {
                cell = row.createCell(j);
                String value;
                if (map.get(columns[j]) == null) {
                    value = "";
                } else if (isDate(map.get(columns[j]))) {
                    value = DateTimeUtils.format((Date) map.get(columns[j]), dateFormat);
                } else {
                    value = map.get(columns[j]).toString();
                }

                // 如果有特殊要求特殊处理
//                if (isNumeric(value)) {
//                    HSSFWorkbook ewb = new HSSFWorkbook();
//                    HSSFCellStyle cellNumStyle = ewb.createCellStyle();
//                    cellNumStyle.setAlignment(HSSFCellStyle.ALIGN_RIGHT);
//                    cellNumStyle.setDataFormat(HSSFDataFormat.getBuiltinFormat("#,##0"));
//                    cell.setCellType(HSSFCell.CELL_TYPE_NUMERIC);
//                }
                cell.setCellValue(value);
            }
        }
    }

    public HSSFWorkbook export() {
        Preconditions.checkNotNull(headers, "headers 不可为空");
        Preconditions.checkNotNull(columns, "columns 不可为空");
        Preconditions.checkArgument(cellWidth >= 0, "cellWidth 不可小于0 ");
        Preconditions.checkArgument(data.size()<MAX_ROWS," 数据行数不可大于65535 ");

        HSSFWorkbook wb = new HSSFWorkbook();
        HSSFSheet sheet = wb.createSheet(sheetName);

        HSSFRow row;
        HSSFCell cell;

        // 设置标题行
        if (headers.length > 0) {
            row = sheet.createRow(0);
            if (headerRow <= 0) {
                headerRow = HEADER_ROW;
            }
            headerRow = Math.min(headerRow, MAX_ROWS);

            // 标题单元格样式
            HSSFCellStyle style = wb.createCellStyle();
            style.setAlignment(CellStyle.ALIGN_CENTER);              // 水平居中
            style.setVerticalAlignment(CellStyle.VERTICAL_CENTER);   // 垂直居
            style.setFillForegroundColor(HSSFColor.AQUA.index);      // 填充前景色 （效果就是 设置单元格背景色)
            style.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);    // 填充前景为实线 （效果就是 设置单元格背景色)
            HSSFFont font = wb.createFont();
            font.setBoldweight(Font.BOLDWEIGHT_BOLD);                // 加粗
            font.setColor(HSSFColor.WHITE.index);                    // 白色
            style.setFont(font);

            for (int h = 0, lenH = headers.length; h < lenH; h++) {
                // 标题行 多行 合并
                CellRangeAddress cellRangeAddress = new CellRangeAddress(0, headerRow - 1, h, h);
                sheet.addMergedRegion(cellRangeAddress);

                // 设置 单元格宽度
                if (cellWidth > 0) {
                    sheet.setColumnWidth(h, cellWidth);
                }

                // 设置单元格值
                cell = row.createCell(h);
                cell.setCellValue(headers[h]);

                cell.setCellStyle(style);
            }
        }
        if (data.size() == 0) {
            return wb;
        }

        // 设置 列表数据
        for (int i = 0, len = data.size(); i < len; i++) {
            row = sheet.createRow(i + headerRow);
            Object obj = data.get(i);
            if (obj == null) {
                continue;
            }
            if (obj instanceof Map) {
                processAsMap(columns, row, obj);
            } else if (obj instanceof Model) {
                processAsModel(columns, row, obj);
            } else if (obj instanceof Record) {
                processAsRecord(columns, row, obj);
            }
        }
        return wb;
    }
}
