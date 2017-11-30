package com.hxkj.common.config;

import com.hxkj.bus.controller.BusNovelController;
import com.hxkj.common.constant.Constant;
import com.jfinal.config.Routes;

/**
 * Created by Administrator on 2017-11-30.
 */
public class BusRoute extends Routes {

    @Override
    public void config() {
        add("/busNovel", BusNovelController.class, Constant.VIEW_PATH);
    }
}
