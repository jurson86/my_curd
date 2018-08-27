package com.hxkj.common.config;

import com.hxkj.common.constant.Constant;
import com.hxkj.play.controller.NovelController;
import com.jfinal.config.Routes;

/**
 * 一些玩具，测试的功能
 *
 * @author chuang
 * @date 2018-06-20 18:56:48
 */
public class PlayRoute extends Routes {
    @Override
    public void config() {
        add("/novel", NovelController.class, Constant.VIEW_PATH);
    }
}
