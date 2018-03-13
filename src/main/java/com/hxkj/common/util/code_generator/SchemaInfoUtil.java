package com.hxkj.common.util.code_generator;

import com.jfinal.kit.JsonKit;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.DbKit;
import com.jfinal.plugin.activerecord.dialect.Dialect;
import com.jfinal.plugin.activerecord.dialect.MysqlDialect;
import com.jfinal.plugin.activerecord.generator.TypeMapping;
import com.jfinal.plugin.druid.DruidPlugin;
import org.slf4j.LoggerFactory;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 数据库信息工具
 */
public class SchemaInfoUtil {
    private final static org.slf4j.Logger LOG = LoggerFactory.getLogger(SchemaInfoUtil.class);
    private Dialect dialect;
    private DataSource ds;
    private TypeMapping typeMapping;

    public SchemaInfoUtil(Dialect dialect, DataSource ds) {
        this.dialect = dialect;
        this.ds = ds;
        this.typeMapping = new TypeMapping();
    }

    public static void main(String[] args) {
        DruidPlugin dp = new DruidPlugin("jdbc:mysql://127.0.0.1/my_curd?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useInformationSchema=true", "root", "123456");
        dp.start();
        Dialect mysqlDialect = new MysqlDialect();
        SchemaInfoUtil util = new SchemaInfoUtil(mysqlDialect, dp.getDataSource());
        List<Table> tables = util.getAllTableInfo(true);
        DbKit.getConfig().getDialect();
        DbKit.getConfig().getDataSource();
        System.out.println(JsonKit.toJson(tables));
    }

    /**
     * 数据库表信息
     *
     * @param fullInfoFlag true查询表的同时查询列集合信息
     * @return
     */
    public List<Table> getAllTableInfo(Boolean fullInfoFlag) {
        List<Table> tables = new ArrayList<Table>();
        Connection conn = null;
        try {
            conn = this.ds.getConnection();
            DatabaseMetaData dbMeta = conn.getMetaData();
            ResultSet rs = dbMeta.getTables(conn.getCatalog(), null, null, null);
            while (rs.next()) {
                Table table = new Table();
                table.setTableName(rs.getString("TABLE_NAME"));
                table.setTableComment(rs.getString("REMARKS"));
                table.setTableNameCamel(StrKit.toCamelCase(table.getTableName()));
                table.setTableNameCamelFirstUp(StrKit.firstCharToUpperCase(table.getTableNameCamel()));
                ResultSet pkrs = dbMeta.getPrimaryKeys(conn.getCatalog(), null, table.getTableName());
                List<String> tablePrimaryKeys = new ArrayList<String>();
                while (pkrs.next()) {
                    tablePrimaryKeys.add(pkrs.getString("COLUMN_NAME"));
                }
                table.setTablePrimaryKeys(tablePrimaryKeys);
                tables.add(table);
            }
            if (fullInfoFlag) {
                for (Table table : tables) {
                    //列 名字 和  java 类型映射关系
                    Map<String, String> nameJavaTypeMap = new HashMap<String, String>();
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
        } catch (SQLException var21) {
            throw new RuntimeException(var21);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException var20) {
                    LOG.error(var20.getMessage(), var20);
                }
            }
        }
        return tables;
    }
}
