package com.hxkj.common.util.excel;

import com.hxkj.common.util.FileUtils;
import org.apache.log4j.Logger;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;
/**
 * Excel 工具类
 */
public class ExcelToList {
    private final static Logger LOG = Logger.getLogger(ExcelToList.class);

    /**
     * 将 excel文件 某几个 sheet 转换成 list<list>, 行<列>
     * 兼容 xls 和  xlsx 文件
     *
     * @param filename   文件全路径, 必须确保文件存在
     * @param sheetIndexAry sheet 索引数组, 必须确保都存在
     * @return 数据list
     */
    public static List<List<Object>> toList(String filename, Integer[] sheetIndexAry) {
        Workbook wb;

        // 兼容2003 与2oo7
        String ext = FileUtils.getExtensionName(filename);
        try {
            if (ext.toLowerCase().equals("xlsx")) {
                wb = new XSSFWorkbook(filename);
            } else {
                wb = WorkbookFactory.create(new FileInputStream(filename));
            }
        } catch (Exception e) {
            LOG.error(e.getMessage(), e);
            return null;
        }
        List<List<Object>> rows = new ArrayList<>();
        Sheet sheet;

        // 遍历 sheet
        for(Integer sheetIndex :  sheetIndexAry){
            sheet = wb.getSheetAt(sheetIndex);

            // 遍历行
            for (Row row : sheet) {
                List<Object> cells = new ArrayList<>();

                // 遍历 列
                for (Cell cell : row) {
                    Object obj;
                    switch (cell.getCellType()) {
                        case Cell.CELL_TYPE_STRING:
                            obj = cell.getRichStringCellValue().getString();
                            break;
                        case Cell.CELL_TYPE_NUMERIC:
                            if (DateUtil.isCellDateFormatted(cell)) {
                                obj = cell.getDateCellValue();
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
                    if (LOG.isDebugEnabled()) {
                        LOG.debug("{["+sheetIndex+"," + row.getRowNum() + "," + cell.getColumnIndex()+"],"+obj+"}");
                    }
                }
                rows.add(cells);
            }
        }
        return rows;
    }
}
