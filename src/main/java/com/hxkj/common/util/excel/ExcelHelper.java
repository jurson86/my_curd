package com.hxkj.common.util.excel;

import com.jfinal.kit.StrKit;
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
 * Excel 工具类
 */
public class ExcelHelper {
    private static ExcelHelper helper = null;

    /**
     * 获得单例的工具类
     * @return
     */
    public static synchronized ExcelHelper getInstanse() {
        if (helper == null) {
            helper = new ExcelHelper();
        }
        return helper;
    }

    /**
     * 获取文件扩展名
     * @param filename
     * @return
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
     * 导出数据到文件
     *
     * @param head
     * @param modelFile
     * @param outputFile
     * @param dataList
     */
    public void exportExcelFile(ExcelHead head, File modelFile, File outputFile, List<?> dataList) {
        // 读取导出excel模板
        InputStream inp ;
        Workbook wb ;
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
     *  获得 excelColumn 的 索引-字段名 map
     * @param excelColumns
     */
    private Map<Integer, String> columnsIndexFieldMap(List<ExcelColumn> excelColumns) {
        Map<Integer, String> excelHeadMap = new HashMap<Integer, String>();
        for (ExcelColumn excelColumn : excelColumns) {
            if (StrKit.notBlank(excelColumn.getFieldName())) {
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
        Map<Integer, String> excelHeadMap = columnsIndexFieldMap(excelColumns);

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
     * 将 excel文件第一个 sheet 转换成 list<list>, 行<列>
     * @param filename 文件全名
     * @return
     * @throws Exception 文件不合法造成的异常
     */
    public List<List> excelFileConvertToList(String filename) throws Exception {
        Workbook wb ;
        // 此处为兼容2003 与2oo7
        String ext = getExtensionName(filename);
        if (ext.toLowerCase().equals("xlsx")) {
            wb = new XSSFWorkbook(filename);
        } else {
            wb = WorkbookFactory.create(new FileInputStream(filename));
        }
        // Sheet Row Cell 三种对象的关系很奇特
        Sheet sheet = wb.getSheetAt(0);
        List<List> rows = new ArrayList<>();

        // 遍历行
        for (Row row : sheet) {
            List<Object> cells = new ArrayList<>();

            // 遍历 行的单元格（列）
            for (Cell cell : row) {
                Object obj = null;
                // 根据 行号和 列 索引 获得 单元格 位置
                CellReference cellRef = new CellReference(row.getRowNum(), cell.getColumnIndex());
                // 单元格数据类型处理
                switch (cell.getCellType()) {
                    case Cell.CELL_TYPE_STRING:
                        obj = cell.getRichStringCellValue().getString();
                        break;
                    case Cell.CELL_TYPE_NUMERIC:
                        if (DateUtil.isCellDateFormatted(cell)) {
                            // 这个 date 为什么要包一层 JDateTime?
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
