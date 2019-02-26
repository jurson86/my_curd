package com.github.qinyou.common.utils.gen.tools;

import com.jfinal.kit.Prop;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.druid.DruidPlugin;

import javax.sql.DataSource;

/**
 * mysql 获得数据源
 *
 * @author zhangchuang
 */
public class MysqlDataSourceUtils {
    /**
     * 获得数据库数据源，用于代码生成器
     *
     * @return 数据源
     */
    public static DataSource getDataSource() {
        Prop configProp = PropKit.use("jdbc.properties");
        DruidPlugin dp = new DruidPlugin(configProp.get("jdbc.url"), configProp.get("jdbc.user"),
                configProp.get("jdbc.password"), configProp.get("jdbc.driver"));
        dp.start();
        return dp.getDataSource();
    }
}
