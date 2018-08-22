package com.hxkj.common.config;

import com.hxkj.common.constant.Constant;
import com.hxkj.data.controller.*;
import com.hxkj.data.model.DataProvince;
import com.jfinal.config.Routes;

/**
 * 基础数据
 * @author chuang
 * @date 2018-06-20 18:56:48
 */
public class DataRoute extends Routes {

    @Override
    public void config() {
        add("/dataFile", DataFileController.class, Constant.VIEW_PATH);
        add("/dataDict", DataDictController.class, Constant.VIEW_PATH);
        add("/dataProvince", DataProvinceController.class, Constant.VIEW_PATH);
        add("/dataCity", DataCityController.class, Constant.VIEW_PATH);
        add("/dataCounty", DataCountyController.class, Constant.VIEW_PATH);
    }

}
