package com.hxkj.common.util.generator;

import javax.sql.DataSource;

public interface Generator {

    /**
     * 先模块后分层
     */
    public void gen2M2C(DataSource dataSource) throws Exception;

    /**
     * 先分层后模块
     */
    public void gen2C2M(DataSource dataSource) throws Exception;
}
