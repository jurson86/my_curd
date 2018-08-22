package com.hxkj.common.util.codegenerator;

import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.dialect.Dialect;
import com.jfinal.plugin.activerecord.dialect.MysqlDialect;
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

    private Dialect dialect;
    private DataSource dataSource;
    private TypeMapping typeMapping;

    public TableMetaUtils(Dialect dialect, DataSource dataSource) {
        this.dialect = dialect;
        this.dataSource = dataSource;
        this.typeMapping = new TypeMapping();
    }


    /**
     * 数据库表信息
     * @param columnFlag true 表包含列信息，false 不包含
     * @return
     */
    public List<Table> getAllTableInfo(Boolean columnFlag) {
        List<Table> tables = new ArrayList<Table>();
        Connection conn = null;
        try {
            conn = this.dataSource.getConnection();
            DatabaseMetaData dbMeta = conn.getMetaData();
            ResultSet rs = dbMeta.getTables(conn.getCatalog(), null, null, null);
            while (rs.next()) {
                Table table = new Table();
                //  表 名
                table.setTableName(rs.getString("TABLE_NAME"));
                // 表 备注
                table.setTableComment(rs.getString("REMARKS"));
                // 表 名 驼峰写法
                table.setTableNameCamel(StrKit.toCamelCase(table.getTableName()));
                // 表 名 驼峰写法 首字母大写
                table.setTableNameCamelFirstUp(StrKit.firstCharToUpperCase(table.getTableNameCamel()));
                // 查询表的主键信息
                ResultSet pkrs = dbMeta.getPrimaryKeys(conn.getCatalog(), null, table.getTableName());
                List<String> tablePrimaryKeys = new ArrayList<String>();
                while (pkrs.next()) {
                    tablePrimaryKeys.add(pkrs.getString("COLUMN_NAME"));
                }
                table.setTablePrimaryKeys(tablePrimaryKeys);
                tables.add(table);
            }
            if (columnFlag) {
                for (Table table : tables) {
                    //列 名字 和  java 类型映射关系
                    Map<String, String> nameJavaTypeMap = new HashMap<>();

                    // 创建一个简单的
                    String sql = this.dialect.forTableBuilderDoBuild(table.getTableName());
                    System.err.println(this.dialect instanceof MysqlDialect);
                    System.err.println("------------------sql:"+sql);

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

                    List<Column> columns = new ArrayList<Column>();
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
            throw new RuntimeException(e);
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
