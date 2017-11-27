package com.hxkj.common.util.excel;

import jodd.bean.BeanUtil;
import jodd.datetime.JDateTime;
import jodd.util.StringUtil;
import org.apache.poi.hssf.util.CellReference;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.*;
import java.util.*;

/**
 * Excel助手类
 */
public class ExcelHelper {
    private static ExcelHelper helper = null;

    private ExcelHelper() {

    }

    public static synchronized ExcelHelper getInstanse() {
        if (helper == null) {
            helper = new ExcelHelper();
        }
        return helper;
    }

    /*
     * 获取文件扩展名
     *
     */
    public static String getExtensionName(String filename) {
        if ((filename != null) && (filename.length() > 0)) {
            int dot = filename.lastIndexOf('.');
            if ((dot > -1) && (dot < (filename.length() - 1))) {
                return filename.substring(dot + 1);
            }
        }
        return filename;
    }

    /**
     * 将Excel文件导入到list对象
     *
     * @param head 文件头信息
     * @param file 导入的数据源
     * @param cls  保存当前数据的对象
     * @return
     */
    public List importToObjectList(ExcelHead head, File file, Class cls) {
        List contents = null;
        FileInputStream fis;
        // 根据excel生成list类型的数据
        List<List> rows;
        try {
            fis = new FileInputStream(file);
            rows = excelFileConvertToList("G://testa.xls");

            // 删除头信息
            for (int i = 0; i < head.getRowCount(); i++) {
                rows.remove(0);
            }

            // 将表结构转换成Map
            Map<Integer, String> excelHeadMap = convertExcelHeadToMap(head.getColumns());
            // 构建为对象
            contents = buildDataObject(excelHeadMap, head.getColumnsConvertMap(), rows, cls);
        } catch (FileNotFoundException ex) {
            ex.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return contents;
    }

    /**
     * @param head
     * @param modelFile
     * @param outputFile
     * @param dataList
     */
    public void exportExcelFile(ExcelHead head, File modelFile, File outputFile, List<?> dataList) {
        // 读取导出excel模板
        InputStream inp = null;
        Workbook wb = null;
        try {
            inp = new FileInputStream(modelFile);
            wb = WorkbookFactory.create(inp);
            Sheet sheet = wb.getSheetAt(0);
            // 生成导出数据
            buildExcelData(sheet, head, dataList);

            // 导出到文件中
            FileOutputStream fileOut = new FileOutputStream(outputFile);
            wb.write(fileOut);
            fileOut.close();
        } catch (FileNotFoundException ex) {
            ex.printStackTrace();
        } catch (InvalidFormatException ex) {
            ex.printStackTrace();
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    /**
     * 将报表结构转换成Map
     *
     * @param excelColumns
     */
    private Map<Integer, String> convertExcelHeadToMap(List<ExcelColumn> excelColumns) {
        Map<Integer, String> excelHeadMap = new HashMap<Integer, String>();
        for (ExcelColumn excelColumn : excelColumns) {

            if (StringUtil.isEmpty(excelColumn.getFieldName())) {
                continue;
            } else {
                excelHeadMap.put(excelColumn.getIndex(), excelColumn.getFieldName());
            }
        }
        return excelHeadMap;
    }

    /**
     * @param sheet
     * @param head
     * @param dataList
     */
    private void buildExcelData(Sheet sheet, ExcelHead head, List<?> dataList) {
        List<ExcelColumn> excelColumns = head.getColumns();
        Map<String, Map> excelHeadConvertMap = head.getColumnsConvertMap();

        // 将表结构转换成Map
        Map<Integer, String> excelHeadMap = convertExcelHeadToMap(excelColumns);

        // 从第几行开始插入数据
        int startRow = head.getRowCount();
        int order = 1;
        for (Object obj : dataList) {
            Row row = sheet.createRow(startRow++);
            for (int j = 0; j < excelColumns.size(); j++) {
                Cell cell = row.createCell(j);
                cell.setCellType(excelColumns.get(j).getType());
                String fieldName = excelHeadMap.get(j);
                if (fieldName != null) {
                    Object valueObject = BeanUtil.getProperty(obj, fieldName);

                    // 如果存在需要转换的字段信息，则进行转换
                    if (excelHeadConvertMap != null && excelHeadConvertMap.get(fieldName) != null) {
                        valueObject = excelHeadConvertMap.get(fieldName).get(valueObject);
                    }

                    if (valueObject == null) {
                        cell.setCellValue("");
                    } else if (valueObject instanceof Integer) {
                        cell.setCellValue((Integer) valueObject);
                    } else if (valueObject instanceof String) {
                        cell.setCellValue((String) valueObject);
                    } else if (valueObject instanceof Date) {
                        cell.setCellValue(new JDateTime((Date) valueObject).toString("YYYY-MM-DD"));
                    } else {
                        cell.setCellValue(valueObject.toString());
                    }
                } else {
                    cell.setCellValue(order++);
                }
            }
        }
    }

    /**
     * @param filename
     * @return
     * @throws Exception
     */
    public List<List> excelFileConvertToList(String filename) throws Exception {
        Workbook wb = null;
        // 此处为兼容2003 与2oo7
        String ext = getExtensionName(filename);
        if (ext.toLowerCase().equals("xlsx")) {
            wb = new XSSFWorkbook(filename);
        } else {
            wb = WorkbookFactory.create(new FileInputStream(filename));
        }


        Sheet sheet = wb.getSheetAt(0);

        List<List> rows = new ArrayList<List>();
        for (Row row : sheet) {

            List<Object> cells = new ArrayList<Object>();
            for (Cell cell : row) {
                Object obj = null;

                CellReference cellRef = new CellReference(row.getRowNum(), cell.getColumnIndex());

                switch (cell.getCellType()) {
                    case Cell.CELL_TYPE_STRING:
                        obj = cell.getRichStringCellValue().getString();
                        break;
                    case Cell.CELL_TYPE_NUMERIC:
                        if (DateUtil.isCellDateFormatted(cell)) {
                            obj = new JDateTime(cell.getDateCellValue());
                        } else {
                            obj = cell.getNumericCellValue();
                        }
                        break;
                    case Cell.CELL_TYPE_BOOLEAN:
                        obj = cell.getBooleanCellValue();
                        break;
                    case Cell.CELL_TYPE_FORMULA:
                        obj = cell.getNumericCellValue();
                        break;
                    default:
                        obj = null;
                }
                cells.add(obj);
            }
            rows.add(cells);
        }
        return rows;
    }

    /**
     * @param filename
     * @param inputStream
     * @return
     * @throws Exception
     */
    public List<List> excelFileConvertToList(String filename, FileInputStream inputStream) throws Exception {
        Workbook wb = null;
        // 此处为兼容2003 与2oo7
        String ext = getExtensionName(filename);
        if (ext.toLowerCase().equals("xlsx")) {
            wb = new XSSFWorkbook(inputStream);
        } else {
            wb = WorkbookFactory.create(inputStream);
        }


        Sheet sheet = wb.getSheetAt(0);

        List<List> rows = new ArrayList<List>();
        for (Row row : sheet) {

            List<Object> cells = new ArrayList<Object>();
            for (Cell cell : row) {
                Object obj = null;

                CellReference cellRef = new CellReference(row.getRowNum(), cell.getColumnIndex());

                switch (cell.getCellType()) {
                    case Cell.CELL_TYPE_STRING:
                        obj = cell.getRichStringCellValue().getString();
                        break;
                    case Cell.CELL_TYPE_NUMERIC:
                        if (DateUtil.isCellDateFormatted(cell)) {
                            obj = new JDateTime(cell.getDateCellValue());
                        } else {
                            obj = cell.getNumericCellValue();
                        }
                        break;
                    case Cell.CELL_TYPE_BOOLEAN:
                        obj = cell.getBooleanCellValue();
                        break;
                    case Cell.CELL_TYPE_FORMULA:
                        obj = cell.getNumericCellValue();
                        break;
                    default:
                        obj = null;
                }
                cells.add(obj);
            }
            rows.add(cells);
        }
        return rows;
    }

    /**
     * 根据Excel生成数据对象
     *
     * @param excelHeadMap        表头信息
     * @param excelHeadConvertMap 需要特殊转换的单元
     * @param rows
     * @param cls
     */
    private List buildDataObject(Map<Integer, String> excelHeadMap, Map<String, Map> excelHeadConvertMap, List<List> rows, Class cls) {
        List contents = new ArrayList();
        for (List list : rows) {
            // 如果当前第一列中无数据,则忽略当前行的数据
            if (list == null || list.get(0) == null) {
                break;
            }
            // 当前行的数据放入map中,生成<fieldName, value>的形式
            Map<String, Object> rowMap = rowListToMap(excelHeadMap, excelHeadConvertMap, list);

            // 将当前行转换成对应的对象
            Object obj = null;
            try {
                obj = cls.newInstance();
            } catch (InstantiationException ex) {
                ex.printStackTrace();
            } catch (IllegalAccessException ex) {
                ex.printStackTrace();
            }
            BeanUtil.populateBean(obj, rowMap);

            contents.add(obj);
        }
        return contents;
    }

    /**
     * 将行转行成map,生成<fieldName, value>的形式
     *
     * @param excelHeadMap        表头信息
     * @param excelHeadConvertMap excelHeadConvertMap
     * @param list
     * @return
     */
    private Map<String, Object> rowListToMap(Map<Integer, String> excelHeadMap, Map<String, Map> excelHeadConvertMap, List list) {
        Map<String, Object> rowMap = new HashMap<String, Object>();
        for (int i = 0; i < list.size(); i++) {
            String fieldName = excelHeadMap.get(i);
            // 存在所定义的列
            if (fieldName != null) {
                Object value = list.get(i);
                if (excelHeadConvertMap != null && excelHeadConvertMap.get(fieldName) != null) {
                    value = excelHeadConvertMap.get(fieldName).get(value);
                }
                rowMap.put(fieldName, value);
            }
        }
        return rowMap;
    }
}
