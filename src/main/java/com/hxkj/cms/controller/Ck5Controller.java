package com.hxkj.cms.controller;

import com.hxkj.common.util.BaseController;

/**
 * ckeditor5 测试例子
 * @author chuang
 * @date 2018-06-20 18:56:48
 */
public class Ck5Controller extends BaseController {


    /**
     * classic 风格
     */
    public void classic(){
        render("cms/ck5_classic_form.html");
    }

}
