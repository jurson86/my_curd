<#--  zhangchuang 2019-03-01 08:42:39 -->
<#include "../common/common.ftl"/>
<@layout>
<table id="dg" class="easyui-datagrid"  url="${ctx!}/sysMenu/queryButton?menuId=${menuId}"
       toolbar="#tb" rownumbers="false" border="false"
       fit="true"    fitColumns="true"  ctrlSelect="true"
       striped="false"  >
    <thead>
    <tr>
        <th data-options="field:'id',checkbox:true"></th>
        <th field="buttonTxt" width="100">名称</th>
        <th field="buttonCode" width="150">编码</th>
    </tr>
    </thead>
</table>
<div id="tb">
    <a onclick="newModel('${ctx!}/sysMenu/newButtonModel?menuId=${menuId}', '300px', '200px')"  class="easyui-linkbutton" iconCls="iconfont icon-add" plain="true">新增</a>
    <a onclick="editModel('dg','${ctx!}/sysMenu/newButtonModel', '300px', '200px')" class="easyui-linkbutton" iconCls="iconfont icon-edit" plain="true">编辑</a>
    <a onclick="deleteModel('dg','${ctx!}/sysMenu/deleteButtonAction?menuId=${menuId}')" class="easyui-linkbutton" iconCls="iconfont icon-delete" plain="true">删除</a>
</div>
<script src="${ctx!}/static/js/dg-curd.js"></script>
</@layout>
