package com.hxkj.cms.controller;

import com.hxkj.common.controller.BaseController;

/**
 * ckeditor5 测试例子
 *
 * @author chuang
 * @date 2018-06-20 18:56:48
 */
public class EditorController extends BaseController {
    /**
     * ckeditor 5
     * classic 风格
     */
    public void ck5classic() {
        render("cms/ck5_classic_form.html");
    }

    /**
     * jquery easyui texteditor
     */
    public void texteditor() {
        render("cms/texteditor.html");
    }
}
