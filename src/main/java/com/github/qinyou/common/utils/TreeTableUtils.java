package com.github.qinyou.common.utils;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;

/**
 * 树型 数据表工具
 */
public class TreeTableUtils {

    /**
     * 查询某节点子树节点
     *
     * @param rootId
     * @param tableName
     * @param idFieldName
     * @param pidFieldName
     * @return
     */
    public static String getSonTreeIds(String rootId, String tableName, String idFieldName, String pidFieldName) {
        String sTemp = "$";
        String sTempChd = rootId;
        Record recordTemp;
        while (sTempChd != null) {
            sTemp = sTemp.concat(",").concat(sTempChd);
            recordTemp = Db.findFirst("SELECT group_concat(" + idFieldName + ") as sTempChd  FROM " + tableName + " where FIND_IN_SET(" + pidFieldName + ",'" + sTempChd + "')>0;");
            if (recordTemp == null) {
                sTempChd = null;
            } else {
                sTempChd = recordTemp.getStr("sTempChd");
            }
        }
        return sTemp.replaceAll("\\$,", "");
    }
}
