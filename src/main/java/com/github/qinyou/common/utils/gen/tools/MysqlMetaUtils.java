package com.github.qinyou.common.utils.gen.tools;

import com.google.common.base.Preconditions;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.generator.TypeMapping;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.sql.DataSource;
import java.sql.*;
import java.util.*;

/**
 * mysql 元数据 工具
 *
 * @author zhangchuang
 */
public class MysqlMetaUtils {
    private DataSource dataSource;  // 数据源
    private final static Logger LOG = LoggerFactory.getLogger(MysqlMetaUtils.class);
    private final static TypeMapping typeMapping = new TypeMapping(); //数据表字段驱动内类型 和 Jfinal model 类型映射

    public MysqlMetaUtils() {
        this.dataSource = MysqlDataSourceUtils.getDataSource();
    }

    public MysqlMetaUtils(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    /**
     * 获得 数据表信息
     *
     * @param schemaPattern 数据库名
     * @param tableNames    表名集合
     * @param includeColumn 是否获得表列信息
     * @return 表元信息
     */
    public List<TableMeta> loadTables(String schemaPattern, Set<String> tableNames, Boolean includeColumn) {
        Preconditions.checkNotNull(dataSource, " dataSource 不可为 null");

        List<TableMeta> tables = new ArrayList<>();
        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            for (String tableName : tableNames) {
                tables.add(loadTable(conn, schemaPattern, tableName, includeColumn));
            }
        } catch (Exception e) {
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


    /**
     * 查询表结构数据
     *
     * @param conn          数据库连接
     * @param schemaPattern oracle schema 名
     * @param tableName     表名
     * @param includeColumn 是否查询列信息
     * @return 表信息
     * @throws Exception 查询异常
     */
    private TableMeta loadTable(Connection conn, String schemaPattern, String tableName, Boolean includeColumn) throws Exception {
        Preconditions.checkNotNull(conn, "代码生成器.md 获得 Connection对象 为 null ");

        DatabaseMetaData dbMeta = conn.getMetaData();
        // 表元信息
        ResultSet rs = dbMeta.getTables(conn.getCatalog(), schemaPattern, tableName, null);
        TableMeta tableMeta = new TableMeta();
        rs.next();
        tableMeta.name = rs.getString("TABLE_NAME");
        tableMeta.remark = rs.getString("REMARKS");
        tableMeta.nameCamel = StrKit.toCamelCase(tableMeta.name.toLowerCase());
        tableMeta.nameCamelFirstUp = StrKit.firstCharToUpperCase(tableMeta.nameCamel);
        ResultSet pkrs = dbMeta.getPrimaryKeys(conn.getCatalog(), null, tableMeta.name);
        List<String> tablePrimaryKeys = new ArrayList<>();
        while (pkrs.next()) {
            tablePrimaryKeys.add(pkrs.getString("COLUMN_NAME"));
        }
        tableMeta.primaryKeys = tablePrimaryKeys;

        // 查询列信息
        if (includeColumn) {
            Map<String, String> nameJavaTypeMap = new HashMap<>();
            String sql = "select * from " + tableName + " where 1 = 2";
            Statement stm = conn.createStatement();
            ResultSet rs4 = stm.executeQuery(sql);
            ResultSetMetaData rsmd = rs4.getMetaData();
            int columnCount = rsmd.getColumnCount();

            // Jfinal 特色,（针对 mysql)
            for (int i = 1; i <= columnCount; ++i) {
                String columnName = rsmd.getColumnName(i);
                String colClassName = rsmd.getColumnClassName(i);
                String typeStr = typeMapping.getType(colClassName);
                if (typeStr == null) {
                    switch (rsmd.getColumnType(i)) {
                        case Types.BINARY:
                            typeStr = "byte[]";
                            break;
                        case Types.VARBINARY:
                            typeStr = "byte[]";
                            break;
                        case Types.LONGVARBINARY:
                            typeStr = "byte[]";
                            break;
                        case Types.BLOB:
                            typeStr = "byte[]";
                            break;
                        case Types.TIMESTAMP:
                            typeStr = "java.utils.Date";
                            break;
                        case Types.DATE:
                            typeStr = "java.utils.Date";
                            break;
                        default:
                            typeStr = "java.lang.String";
                            break;
                    }
                }
                nameJavaTypeMap.put(columnName, typeStr);
            }

            List<ColumnMeta> columnMetas = new ArrayList<>();
            rs = dbMeta.getColumns(conn.getCatalog(), schemaPattern, tableMeta.name, null);
            while (rs.next()) {
                ColumnMeta columnMeta = new ColumnMeta();
                columnMeta.name = rs.getString("COLUMN_NAME");
                columnMeta.remark = rs.getString("REMARKS");
                columnMeta.dbType = rs.getString("TYPE_NAME");
                columnMeta.defaultValue = rs.getString("COLUMN_DEF");
                columnMeta.isNullable = "YES".equals(rs.getString("IS_NULLABLE"));
                columnMeta.size = rs.getInt("COLUMN_SIZE");
                columnMeta.decimalDigits = rs.getInt("DECIMAL_DIGITS");
                if (columnMeta.name.contains("_")) {
                    columnMeta.nameCamel = StrKit.toCamelCase(columnMeta.name.toLowerCase());
                } else {
                    columnMeta.nameCamel = columnMeta.name;
                }
                columnMeta.nameCamelFirstUp = StrKit.firstCharToUpperCase(columnMeta.nameCamel);
                columnMeta.setJavaType(nameJavaTypeMap.get(columnMeta.name));
                columnMeta.isPrimaryKey = tableMeta.primaryKeys.contains(columnMeta.name);
                columnMetas.add(columnMeta);
            }
            tableMeta.setColumnMetas(columnMetas);
        }

        return tableMeta;
    }
}
