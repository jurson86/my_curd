<#--数据字典 datagrid  -->
<#include "../common/common.ftl"/>
<@layout>
<style>
    /*datagrid 行号大时调整*/
    .datagrid-header-rownumber{
        width:50px !important;
    }
    .datagrid-cell-rownumber{
        width:50px !important;
    }
    /*datagrid 最小高度*/
    .datagrid-toolbar{
        min-height: 33px !important;
    }
</style>
    <table id="dg" class="easyui-datagrid"
           url="${ctx!}/sysVisitLog/query" rownumbers="true" border="false" toolbar="#tb"
           data-options="rowStyler:function(index,row){
			if (row.errorFlag==1){
				return 'background-color:#f5969659;font-weight:bold;';
			}
		  },onHeaderContextMenu: function(e, field){
                e.preventDefault();
                $(this).datagrid('columnMenu').menu('show', {
                    left:e.pageX,
                    top:e.pageY
                });
          }"
          fitColumns="false"
          fit="true" pagination="true"
          ctrlSelect="true"
          striped="false"
          pageSize="40" pageList="[10,20,40,80]">
       <thead>
       <tr>
           <th data-options="field:'id',checkbox:true"></th>
           <th field="url" width="300" formatter="urlFmt">请求地址</th>
           <th field="requestType" width="100">请求类型</th>
           <th field="sysUser" width="150"  formatter="usernameFmt" >用户</th>
           <th field="sysUserIp" width="200">IP地址</th>
           <th field="createTime" width="200">创建时间</th>
       </tr>
       </thead>
    </table>
    <div id="tb">
        <#--<a onclick="viewModel('查看','dg','${ctx!}/sysVisitLog/view', '800px', '600px')" href="#"-->
           <#--class="easyui-linkbutton" iconCls="iconfont icon-eye" plain="true">查看</a>-->

        <#--
        按钮显示 条件:
        1. btnControl 不存在（不控制按钮权限）。
        2. btnControl 存在（需控制权限）且 包含 按钮权限字段
        -->
        <#if  !btnControl?? ||  btnCodes?seq_contains("sysVisitLog:delete")  >
        <a onclick="deleteModel('dg','${ctx!}/sysVisitLog/deleteAction')" href="#" class="easyui-linkbutton"
           iconCls="iconfont icon-delete" plain="true">删除</a>
        </#if>

        <#if  !btnControl?? ||  btnCodes?seq_contains("sysVisitLog:export")  >
        <a onclick="exportExcel('${ctx!}/sysVisitLog/exportExcel','searchSpan')" href="#" class="easyui-linkbutton"
           iconCls="iconfont icon-export" plain="true">导出</a>
        </#if>

        <span id="searchSpan" class="searchInputArea">
            <input name="search_LIKE_sysUser" prompt="用户名" class="easyui-textbox" style="width:120px; ">
            <input name="search_LIKE_sysUserIp" prompt="IP地址" class="easyui-textbox" style="width:120px; ">
            <input name="search_LIKE_requestType" prompt="请求类型" class="easyui-combobox"  style="width:120px; "
                   data-options="data: [ {value:'GET',text:'GET'} ,{value:'POST',text:'POST'},{value:'PUT',text:'PUT'},{value:'DELETE',text:'DELETE'}],
                             editable: false, panelHeight:'auto'" >
            <input name="search_GTE_createTime"  prompt="创建时间起" class="easyui-datetimebox" >
            <input name="search_LTE_createTime" prompt="创建时间止" class="easyui-datetimebox" >
            <input name="search_ISNOT_error" type="hidden" id="onlyError" >

            <span style="display: inline-block;height: 30px;padding: 4px 10px;" title="仅异常">
                  <input class="easyui-checkbox"   value="onlyError"  data-options="onChange:onlyErrorChange" >
            </span>
            <a href="#" class="easyui-linkbutton searchBtn"
               data-options="iconCls:'iconfont icon-search',plain:true"
               onclick="queryModel('dg','searchSpan')">搜索</a>
        </span>
    </div>
    <script src="${ctx!}/static/js/dg-curd.js"></script>
    <script src="${ctx!}/static/plugins/easyui1.6.10/datagrid-extend.js"></script>
    <script>
        <#-- 只查询异常 checkbox  onChange 事件-->
        function onlyErrorChange(checked){
            $("#onlyError").val(!checked?'':true);
           /* $(".searchBtn","#searchSpan").first().trigger('click');*/
        }

        function urlFmt(val,row){
            return '<a title="点击查看请求信息" href="javascript:viewModelsByLink(\'查看\',\'${ctx!}/sysVisitLog/view?id='
                    +row.id+'\',\'700px\',\'400px\')"  >'+val+'</a>';
        }
        function usernameFmt(val,row) {
            return '<a title="点击查看人员信息" href="javascript:userInfo(\'${ctx!}\',\''+val+'\')" >'+val+'</a>';
        }


    </script>
</@layout>