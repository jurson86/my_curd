package com.hxkj.common.util.codegenerator;

import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.dialect.Dialect;
import com.jfinal.plugin.activerecord.generator.TypeMapping;
import org.apache.log4j.Logger;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 数据库表信息 转换
 */
public class TableMetaUtils {
    private final static Logger LOG = Logger.getLogger(TableMetaUtils.class);

    private final Dialect dialect;
    private final DataSource dataSource;
    // 符合 jfinal 特色 的数据库 java 类型映射
    private final TypeMapping typeMapping = new TypeMapping();

    public TableMetaUtils(Dialect dialect, DataSource dataSource) {
        this.dialect = dialect;
        this.dataSource = dataSource;
    }


    /**
     * 数据库表信息
     *
     * @param columnFlag true 表包含列信息，false 不包含
     * @return
     */
    public List<Table> getAllTableInfo(Boolean columnFlag) {
        List<Table> tables = new ArrayList<>();
        Connection conn = null;
        try {
            conn = this.dataSource.getConnection();
            DatabaseMetaData dbMeta = conn.getMetaData();
            ResultSet rs = dbMeta.getTables(conn.getCatalog(), null, null, null);
            while (rs.next()) {
                Table table = new Table();
                table.setTableName(rs.getString("TABLE_NAME"));  //  表 名
                table.setTableComment(rs.getString("REMARKS"));   // 表 备注
                table.setTableNameCamel(StrKit.toCamelCase(table.getTableName()));    // 表 名 驼峰写法
                table.setTableNameCamelFirstUp(StrKit.firstCharToUpperCase(table.getTableNameCamel())); // 表 名 驼峰写法 首字母大写
                // 查询表的主键信息
                ResultSet pkrs = dbMeta.getPrimaryKeys(conn.getCatalog(), null, table.getTableName());
                List<String> tablePrimaryKeys = new ArrayList<>();
                while (pkrs.next()) {
                    tablePrimaryKeys.add(pkrs.getString("COLUMN_NAME"));
                }
                table.setTablePrimaryKeys(tablePrimaryKeys); // 主键列表
                tables.add(table);
            }
            if (columnFlag) {
                for (Table table : tables) {
                    // 获得 表 字段 与 java 类型的 映射
                    Map<String, String> nameJavaTypeMap = new HashMap<>();
                    String sql = this.dialect.forTableBuilderDoBuild(table.getTableName());
                    Statement stm = conn.createStatement();
                    ResultSet rs4 = stm.executeQuery(sql);
                    ResultSetMetaData rsmd = rs4.getMetaData();
                    for (int i = 1; i <= rsmd.getColumnCount(); ++i) {
                        String columnName = rsmd.getColumnName(i);
                        String colClassName = rsmd.getColumnClassName(i);        // java sql 类型
                        String typeStr = this.typeMapping.getType(colClassName); // 适合jfinal 的 java 类型
                        if (typeStr != null) {
                            nameJavaTypeMap.put(columnName, typeStr);
                        } else {
                            int type = rsmd.getColumnType(i);
                            if (type != -2 && type != -3 && type != 2004) {
                                if (type != 2005 && type != 2011) {
                                    nameJavaTypeMap.put(columnName, "java.lang.String");
                                } else {
                                    nameJavaTypeMap.put(columnName, "java.lang.String");
                                }
                            } else {
                                nameJavaTypeMap.put(columnName, "byte[]");
                            }
                        }
                    }

                    // 获得 表 相应的 列信息
                    List<Column> columns = new ArrayList<>();
                    ResultSet rs2 = dbMeta.getColumns(conn.getCatalog(), null, table.getTableName(), null);
                    while (rs2.next()) {
                        Column column = new Column();
                        column.setColumnName(rs2.getString("COLUMN_NAME"));
                        column.setColumnNameCamel(StrKit.toCamelCase(column.getColumnName()));
                        column.setColumnNameCamelFirstUp(StrKit.firstCharToUpperCase(column.getColumnNameCamel()));
                        column.setColumnComment(rs2.getString("REMARKS"));
                        column.setColumnDBType(rs2.getString("TYPE_NAME"));
                        column.setColumnJavaType(nameJavaTypeMap.get(column.getColumnName()));
                        if (table.getTablePrimaryKeys().contains(column.getColumnName())) {
                            column.setPrimaryKey(true);
                        } else {
                            column.setPrimaryKey(false);
                        }
                        columns.add(column);

                    }
                    table.setColumnList(columns);
                }
            }
        } catch (SQLException e) {
            LOG.error(e.getMessage(), e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    LOG.error(e.getMessage(), e);
                }
            }
        }
        return tables;
    }
}
