package com.github.qinyou.common.validator;

import com.jfinal.core.Controller;
import com.jfinal.kit.Ret;
import com.jfinal.validate.Validator;

/**
 * id 参数不为空
 *
 * @author zhangchuang
 */
public class IdRequired extends Validator {
    @Override
    protected void validate(Controller c) {
        validateRequired("id", "id", "id 参数为空");
    }

    @Override
    protected void handleError(Controller c) {
        Ret ret = Ret.create().setFail().set("msg", "id 参数为空");
        c.renderJson(ret);
    }
}
