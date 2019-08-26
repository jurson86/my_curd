package com.github.qinyou.oa.controller;

import com.github.qinyou.common.utils.TreeTableUtils;
import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.github.qinyou.common.web.BaseController;
import com.github.qinyou.common.constant.Constant;
import com.github.qinyou.common.interceptor.SearchSql;
import com.github.qinyou.common.utils.Id.IdUtils;
import com.github.qinyou.common.utils.StringUtils;
import com.github.qinyou.common.utils.WebUtils;
import com.github.qinyou.common.validator.IdsRequired;
import com.github.qinyou.common.annotation.RequireMenuCode;
import com.github.qinyou.oa.model.BusinessFormInfo;

import java.util.Date;

/**
 * business_form_info 控制器
 * @author chuang
 * @since 2019-08-22 20:49:00
 */
@SuppressWarnings("Duplicates")
@RequireMenuCode("businessFormInfo")
public class BusinessFormInfoController extends BaseController{

    /**
     * 列表页
     */
    public void index(){
      render("oa/businessFormInfo.ftl");
    }

    /**
     * 列表数据
     */
    @Before(SearchSql.class)
    public void query(){
        int pageNumber=getAttr("pageNumber");
        int pageSize=getAttr("pageSize");
        String where=getAttr(Constant.SEARCH_SQL);

        // 组织机构查询条件
        String orgId = getPara("extra_orgId");
        if (StringUtils.notEmpty(orgId)) {
            Boolean cascadeOrg = getParaToBoolean("extra_cascadeOrg", false);
            String whereSeg;
            if (cascadeOrg) {
                String sonIds = TreeTableUtils.getSonTreeIds(orgId, "sys_org", "id", "pid");
                if (StringUtils.notEmpty(sonIds)) {
                    sonIds = sonIds.replaceAll(",", "','");
                } else {
                    sonIds = "unknow";  // 查不到的
                }
                whereSeg = " categoryId in ('" + sonIds + "')";
            } else {
                whereSeg = " categoryId ='" + orgId + "' ";
            }

            if (StringUtils.isEmpty(where)) {
                where += whereSeg;
            } else {
                where += (" and " + whereSeg);
            }
        }

        Page<BusinessFormInfo> businessFormInfoPage=BusinessFormInfo.dao.page(pageNumber,pageSize,where);
        renderDatagrid(businessFormInfoPage);
    }


    /**
     * 打开新增或者修改弹出框
     */
    public void newModel(){
        String id=getPara("id");
        if(StringUtils.notEmpty(id)){
            BusinessFormInfo businessFormInfo=BusinessFormInfo.dao.findById(id);
            setAttr("businessFormInfo",businessFormInfo);
            setAttr("categoryId",businessFormInfo.getCategoryId());
        }else{
            setAttr("categoryId", getPara("categoryId", "0"));
        }
        render("oa/businessFormInfo_form.ftl");
    }


    /**
     * 新增 action
     */
    public void addAction(){
        BusinessFormInfo businessFormInfo=getBean(BusinessFormInfo.class,"");
        businessFormInfo.setId(IdUtils.id())
            .setCreater(WebUtils.getSessionUsername(this))
            .setCreateTime(new Date());
        if(businessFormInfo.save()){
            renderSuccess(ADD_SUCCESS);
        }else{
            renderFail(ADD_FAIL);
        }
    }

    /**
     * 修改 action
     */
    public void updateAction(){
        BusinessFormInfo businessFormInfo=getBean(BusinessFormInfo.class,"");
        businessFormInfo.setUpdater(WebUtils.getSessionUsername(this))
            .setUpdateTime(new Date());
        if( businessFormInfo.update()){
            renderSuccess(UPDATE_SUCCESS);
        }else{
            renderFail(UPDATE_FAIL);
        }
    }

    /**
     * 删除 action
     */
    @Before(IdsRequired.class)
    public void deleteAction(){
        String ids = getPara("ids").replaceAll(",","','");
        String deleteSql = "delete from business_form_info where id in ( '" + ids + "' ) ";
        Db.update(deleteSql);
        renderSuccess(DELETE_SUCCESS);
    }


}
