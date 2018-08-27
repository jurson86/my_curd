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
public class ExcelHelper {
    private final static Logger LOG = Logger.getLogger(ExcelHelper.class);
    private static ExcelHelper helper = null;

    /**
     * 获得单例的工具类
     *
     * @return
     */
    public static synchronized ExcelHelper getInstanse() {
        if (helper == null) {
            helper = new ExcelHelper();
        }
        return helper;
    }

    /**
     * 将 excel文件第一个 sheet 转换成 list<list>, 行<列>
     *
     * @param filename   文件全路径
     * @param sheetIndex sheet 索引
     * @return
     * @throws Exception
     */
    public List<List> convertToList(String filename, Integer sheetIndex) throws Exception {
        Workbook wb;

        // 兼容2003 与2oo7
        String ext = FileUtils.getExtensionName(filename);
        if (ext.toLowerCase().equals("xlsx")) {
            wb = new XSSFWorkbook(filename);
        } else {
            wb = WorkbookFactory.create(new FileInputStream(filename));
        }

        Sheet sheet = wb.getSheetAt(sheetIndex);
        List<List> rows = new ArrayList<>();
        for (Row row : sheet) {
            List<Object> cells = new ArrayList<>();
            for (Cell cell : row) {
                Object obj;
                if (LOG.isDebugEnabled()) {
                    LOG.debug("行号:" + row.getRowNum() + "  列索引:" + cell.getColumnIndex());
                }
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
            }
            rows.add(cells);
        }
        return rows;
    }
}
