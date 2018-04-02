/**
 * Copyright (c) 2011-2013, kidzhou 周磊 (zhouleib1412@gmail.com)
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * <p>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.hxkj.common.util.excel;

import com.google.common.base.Preconditions;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Record;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.hssf.util.Region;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class PoiKit {

    private static final int HEADER_ROW = 1;
    private static final int MAX_ROWS = 65536;

    private String sheetName = "new sheet";
    private int cellWidth = 8000;
    private int headerRow;
    private String[] headers = new String[]{};
    private String[] columns;
    private List<?> data;

    public PoiKit(List<?> data) {
        this.data = data;
    }

    public static PoiKit with(List<?> data) {
        return new PoiKit(data);
    }

    @SuppressWarnings("unchecked")
    private static void processAsMap(String[] columns, HSSFRow row, Object obj) {
        HSSFCell cell;
        Map<String, Object> map = (Map<String, Object>) obj;
        if (columns.length == 0) {// 未设置显示列，默认全部
            Set<String> keys = map.keySet();
            int columnIndex = 0;
            for (String key : keys) {
                cell = row.createCell(columnIndex);
                cell.setCellValue(map.get(key) + "");
                columnIndex++;
            }
        } else {
            for (int j = 0, lenJ = columns.length; j < lenJ; j++) {
                cell = row.createCell(j);
                cell.setCellValue(map.get(columns[j]) + "");
            }
        }
    }

    private static void processAsModel(String[] columns, HSSFRow row, Object obj) {
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
                } else {
                    value = entry.getValue().toString();
                }
                cell.setCellValue(value + "");
                columnIndex++;
            }
        } else {
            for (int j = 0, lenJ = columns.length; j < lenJ; j++) {
                cell = row.createCell(j);
                String value ;
                if (model.get(columns[j]) == null) {
                    value = "";
                } else {
                    value = model.get(columns[j]).toString();
                }
                cell.setCellValue(value + "");
            }
        }
    }

    private static void processAsRecord(String[] columns, HSSFRow row, Object obj) {
        HSSFCell cell;
        Record record = (Record) obj;
        Map<String, Object> map = record.getColumns();
        if (columns.length == 0) {// 未设置显示列，默认全部
            record.getColumns();
            Set<String> keys = map.keySet();
            int columnIndex = 0;
            for (String key : keys) {
                cell = row.createCell(columnIndex);
                String value ;
                if (record.get(key) == null) {
                    value = "";
                } else {
                    value = record.get(key).toString();
                }
                cell.setCellValue(value + "");
                columnIndex++;
            }
        } else {
            for (int j = 0, lenJ = columns.length; j < lenJ; j++) {
                cell = row.createCell(j);
                String value;
                if (map.get(columns[j]) == null) {
                    value = "";
                } else {
                    value = map.get(columns[j]).toString();
                }
                if (isNumeric(value)) {
//                    HSSFWorkbook ewb = new HSSFWorkbook();
//                    HSSFCellStyle cellNumStyle = ewb.createCellStyle();
//                    cellNumStyle.setAlignment(HSSFCellStyle.ALIGN_RIGHT);
//                    cellNumStyle.setDataFormat(HSSFDataFormat.getBuiltinFormat("#,##0"));
                    cell.setCellType(HSSFCell.CELL_TYPE_NUMERIC);
                }
                cell.setCellValue(value);


            }
        }
    }

    public static boolean isNumeric(String str) {
        for (int i = str.length(); --i >= 0; ) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public HSSFWorkbook export() {
        Preconditions.checkNotNull(headers, "headers can not be null");
        Preconditions.checkNotNull(columns, "columns can not be null");
        Preconditions.checkArgument(cellWidth >= 0, "cellWidth < 0");

        HSSFWorkbook wb = new HSSFWorkbook();
        HSSFSheet sheet = wb.createSheet(sheetName);
        HSSFRow row ;
        HSSFCell cell ;
        if (headers.length > 0) {
            row = sheet.createRow(0);
            if (headerRow <= 0) {
                headerRow = HEADER_ROW;
            }
            headerRow = Math.min(headerRow, MAX_ROWS);
            for (int h = 0, lenH = headers.length; h < lenH; h++) {
                @SuppressWarnings("deprecation")
                Region region = new Region(0, (short) h, (short) headerRow - 1, (short) h);// 合并从第rowFrom行columnFrom列
                sheet.addMergedRegion(region);// 到rowTo行columnTo的区域
                // 得到所有区域
                sheet.getNumMergedRegions();
                if (cellWidth > 0) {
                    sheet.setColumnWidth(h, cellWidth);
                }
                cell = row.createCell(h);
                cell.setCellValue(headers[h]);
                HSSFCellStyle style = wb.createCellStyle();
                style.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
                style.setFillForegroundColor(HSSFColor.AQUA.index);

                cell.setCellStyle(style);
            }
        }
        if (data.size() == 0) {
            return wb;
        }
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
}
