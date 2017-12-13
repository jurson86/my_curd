package com.hxkj.common.util.generator;

import com.jfinal.plugin.druid.DruidPlugin;

import javax.sql.DataSource;

public class Test {
    public static DataSource getDataSource() {
        DruidPlugin dp = new DruidPlugin("jdbc:mysql://127.0.0.1/my_curd?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true", "root", "123456");
        dp.start();
        return dp == null ? null : dp.getDataSource();
    }

    public static void main(String[] args) {
        String[] templates = {"model.ftl", "baseModel.ftl",
                "controller.ftl", "list.ftl", "form.ftl"};
        String[] paths = {"model", "model/base",
                "controller", "views", "views"};
        String[] fileNameWrapers = {"@tableName@.java", "Base@tableName@.java",
                "@tableName@Controller.java", "@tableName@.html", "@tableName@_form.html"};

        MyGenerator myGenerator = new MyGenerator(getDataSource());
        myGenerator.setTemplates(templates);
        myGenerator.setPaths(paths);
        myGenerator.setfileNameWrapers(fileNameWrapers);

        try {
            myGenerator.gen2M2C();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
