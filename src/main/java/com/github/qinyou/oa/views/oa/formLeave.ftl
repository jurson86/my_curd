<#--  zhangchuang 2019-07-23 15:50:30 -->
<#include "../common/common.ftl"/>
<@layout>
<table id="dg" class="easyui-datagrid"
       url="${ctx!}/formLeave/query"
       toolbar="#tb" rownumbers="true" border="false"
       fit="true"    fitColumns="false"
       striped="false"  pagination="true"
       ctrlSelect="true" pageSize="40" pageList="[20,40]">
    <thead>
    <tr>
        <th data-options="field:'id',checkbox:true"></th>
        <th field="leaveType" width="150">请假类型</th>
        <th field="startTime" width="150">开始时间</th>
        <th field="endTime" width="150">结束时间</th>
        <th field="leaveReason" width="150">请假原因</th>
    </tr>
    </thead>
</table>
<div id="tb">
    <a onclick="newModel('${ctx!}/formLeave/newModel', '500px', '400px')" href="#" class="easyui-linkbutton"
       iconCls="iconfont icon-add" plain="true">新增</a>
    <a onclick="editModel('dg','${ctx!}/formLeave/newModel', '500px', '400px')" href="#"
       class="easyui-linkbutton" iconCls="iconfont icon-edit" plain="true">编辑</a>
    <a onclick="deleteModel('dg','${ctx!}/formLeave/deleteAction')" href="#" class="easyui-linkbutton  "
       iconCls="iconfont icon-delete" plain="true">删除</a>


    <span id="searchSpan" class="searchInputArea">
            <input name="search_LIKE_test" prompt="测试" class="easyui-textbox" style="width:120px; ">
            <a href="#" class="easyui-linkbutton searchBtn"  data-options="iconCls:'iconfont icon-search',plain:true"
               onclick="queryModel('dg','searchSpan')">搜索</a>
    </span>
</div>
<script src="${ctx!}/static/js/dg-curd.js"></script>
</@layout>
