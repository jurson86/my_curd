/**
 * 弹窗 查看流程实例运行 详情
 * @param runFlag  流程实例是否运行
 * @param id  流程实例id
 * @param title 弹窗标题
 */
function openProcessInstanceDetail(runFlag,id,title){
    if(runFlag){
        popup.openIframe(title||'正运行 流程详情', ctx+'/oa/processInstanceDetail?id='+id, "1000px","90%");
    }else{
        popup.openIframe(title||'已结束 流程详情', ctx+'/oa/historicProcessInstanceDetail?id='+id, "1000px","90%");
    }
}

/**
 * 流程实例 运行状态格式化
 * @param val
 * @param row
 * @returns {string}
 */
function instanceStatueFmt(val,row) {
    if(row.processInstanceId){
        return '[待审: '+row.currentActivityName+']';
    }else  if(row.hisProcessInstanceId){
        return '[已结束]';
    }else{
        return '[无流程]';
    }
}

/**
 * 流程 详情
 * @param val
 * @param row
 * @returns {string}
 */
function instanceDetailFmt(val,row){
    var ret;
    if(row.processInstanceId){
        ret =  '<a href="javascript:openProcessInstanceDetail(true,\''+row.processInstanceId+'\')">['+row.processInstanceId+']</a>';
    }else  if(row.hisProcessInstanceId){
        ret =  '<a href="javascript:openProcessInstanceDetail(false,\''+row.hisProcessInstanceId+'\')">['+row.hisProcessInstanceId+']</a>';
    }else{
        ret =  '[无]';
    }
    return ret;
}

function openAdjustFormModel(dgId,url,width,height,title){
    var rows= $("#"+dgId).datagrid("getSelections");
    if (rows.length===1) {
        if(rows[0].currentActivityId !== 'adjustForm'){
            popup.msg('当前流程阶段不允许编辑申请信息');
            return;
        }
        popup.openIframe(title || '编辑', url+'?id=' + rows[0].id, width,height);
    } else {
        popup.msg('请选择一行数据进行操作');
    }
}
