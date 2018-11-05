package com.hxkj.common.util;


import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;

/**
 * 树型 数据表工具
 * 限本系统 mysql 下使用
 */
public class TreeTableUtils {


    /**
     * 查询树表 某个节点 的 完整子树节点id，以逗号分隔
     * （id,pid 类型树表， id pid 字段必须为 数字类型), 例如 auth_menu  auth_org 表
     * authMenuTreeIds authOrgTreeIds 数据库函数的 java 替换版
     * @param rootId 某节点id
     * @param tableName 表名
     * @param idFieldName id字段名
     * @param pidFieldName pid字段名
     * @return 子树节点id，以逗号分隔字符串
     */
    public static String getSonTreeIds(Integer rootId, String tableName, String idFieldName, String pidFieldName) {
        String sTemp = "$";
        String sTempChd = rootId.toString();
        Record recordTemp;
        while (sTempChd != null) {
            sTemp = sTemp.concat(",").concat(sTempChd);
            recordTemp = Db.findFirst("SELECT group_concat("+idFieldName+") as sTempChd  FROM " + tableName + " where FIND_IN_SET("+pidFieldName+",'"+sTempChd+"')>0;");
            if(recordTemp==null){
                sTempChd=null;
            }else{
                sTempChd = recordTemp.getStr("sTempChd");
            }
        }
        return sTemp.replaceAll("\\$,","");
    }
}
