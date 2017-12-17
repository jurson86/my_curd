package com.hxkj.common.util.generator;

import com.jfinal.kit.LogKit;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.plugin.activerecord.generator.ColumnMeta;
import com.jfinal.plugin.activerecord.generator.TableMeta;
import com.jfinal.plugin.druid.DruidPlugin;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class MyGeneratorService {

    private DataSource dataSource;

    public DataSource getDataSource() {
        return dataSource;
    }

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    /**
     * 数据库数据表信息
     * @return
     */
    public List<Map<String,String>> getAllTables(){
        Connection conn = null;
        try {
            conn = this.dataSource.getConnection();
            DatabaseMetaData dbMeta = conn.getMetaData();

            //catalog 相当于数据库名
            ResultSet rs = dbMeta.getTables(conn.getCatalog(),null,null,null);
            while (rs.next()){
                System.out.println(rs.getString("TABLE_NAME"));
                System.out.println(rs.getString("REMARKS"));
            }

            ResultSet rs2 = dbMeta.getColumns(conn.getCatalog(),null,"sys_dict",null);
            while (rs2.next()){
                System.out.println(rs2.getString("COLUMN_NAME"));
                System.out.println(rs2.getString("REMARKS"));
                System.out.println(rs2.getString("TYPE_NAME"));
                System.out.println(rs2.getString("COLUMN_SIZE"));
            }


        } catch (SQLException var21) {
            throw new RuntimeException(var21);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException var20) {
                    LogKit.error(var20.getMessage(), var20);
                }
            }

        }
      return  null;
    }

    public static void main(String[] args) {
        DruidPlugin dp = new DruidPlugin("jdbc:mysql://127.0.0.1/my_curd?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useInformationSchema=true", "root", "123456");
        dp.start();
        MyGeneratorService service = new MyGeneratorService();
        service.setDataSource(dp.getDataSource());
        service.getAllTables();




    }
}
