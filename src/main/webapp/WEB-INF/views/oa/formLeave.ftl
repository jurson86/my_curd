<#--  zhangchuang 2019-07-23 15:50:30 -->
<#include "../common/common.ftl"/>
<@layout>
<table id="dg" class="easyui-datagrid"
       url="${ctx!}/formLeave/query"
       data-options="onHeaderContextMenu: function(e, field){
                e.preventDefault();
                $(this).datagrid('columnMenu').menu('show', {
                    left:e.pageX,
                    top:e.pageY
                });
       }"
       toolbar="#tb" rownumbers="true" border="false"
       fit="true"    fitColumns="false" nowrap="false"
       striped="false"  pagination="true"
       ctrlSelect="true" pageSize="40" pageList="[20,40]">
    <thead>
    <tr>
        <th data-options="field:'x',checkbox:true"></th>
        <th hidden="true" field="id" width="150">申请Id</th>
        <th hidden="true"  field="createTime" width="200">创建时间</th>
        <th field="leaveType" width="100">请假类型</th>
        <th field="startTime" width="200">开始时间</th>
        <th field="endTime" width="150">结束时间</th>
        <th field="leaveReason" width="300">请假原因</th>

        <th field="one" width="200" formatter="instanceStatueFmt">流程状态</th>
        <th field="two" width="100" formatter="instanceDetailFmt">流程详情</th>
    </tr>
    </thead>
</table>
<div id="tb">
    <a onclick="newModel('${ctx!}/formLeave/newModel', '500px', '500px')" href="#" class="easyui-linkbutton"
       iconCls="iconfont icon-add" plain="true">新建</a>
    <#--<a onclick="editModel('dg','${ctx!}/formLeave/newModel', '500px', '500px')" href="#"-->
       <#--class="easyui-linkbutton" iconCls="iconfont icon-edit" plain="true">调整</a>-->
    <a onclick="deleteModel('dg','${ctx!}/formLeave/deleteAction')" href="#" class="easyui-linkbutton  "
       iconCls="iconfont icon-delete" plain="true">删除</a>
    <span id="searchSpan" class="searchInputArea">
            <input name="search_LIKE_test" prompt="测试" class="easyui-textbox" style="width:120px; ">
            <a href="#" class="easyui-linkbutton searchBtn"  data-options="iconCls:'iconfont icon-search',plain:true"
               onclick="queryModel('dg','searchSpan')">搜索</a>
    </span>
</div>
<script src="${ctx!}/static/js/dg-curd.js"></script>
<script src="${ctx!}/static/plugins/easyui1.6.10/datagrid-extend.js"></script>
<script>

     function openProcessInstanceModel(runFlag,id,title){
         if(runFlag){
             popup.openIframe(title||'正运行 流程详情', '${ctx!}/oa/processInstanceDetail?id='+id, "1000px","90%");
         }else{
             popup.openIframe(title||'已结束 流程详情', '${ctx!}/oa/historicProcessInstanceDetail?id='+id, "1000px","90%");
         }
     }
     function instanceStatueFmt(val,row) {
         if(row.processInstanceId){
             return '[待审: '+row.currentActivityName+']';
         }else  if(row.hisProcessInstanceId){
             return '[已结束]';
         }else{
             return '[无流程]';
         }
     }

     function instanceDetailFmt(val,row){
         if(row.processInstanceId){
             return '<a href="javascript:openProcessInstanceModel(true,\''+row.processInstanceId+'\')">['+row.processInstanceId+']</a>';
         }else  if(row.hisProcessInstanceId){
             return '<a href="javascript:openProcessInstanceModel(false,\''+row.hisProcessInstanceId+'\')">['+row.hisProcessInstanceId+']</a>';
         }else{
             return '[无]';
         }
     }

</script>
</@layout>
