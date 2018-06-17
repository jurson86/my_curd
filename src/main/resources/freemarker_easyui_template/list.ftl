<!-- 生成时间： ${generateDate!} -->
<#noparse><#include "/WEB-INF/views/common/common.html"/> <@layout></#noparse>
<link rel="stylesheet" href="<#noparse>${ctx!}</#noparse>/res/layer/theme/default/layer.css">
</head>
<body>
<script type="text/javascript">

    /*新增 model*/
    function newModel() {
        layerTools.layerIframe('fa-plus','新建', '<#noparse>${ctx!}</#noparse>/${(table.tableNameCamel)!}/newModel', '800px', '500px');
    }

    /*编辑 model*/
    function editModel() {
        var row = $("#dg").treegrid("getSelected");
        if (row != null) {
            var params="";
            <#list table.tablePrimaryKeys as pk>
                <#if pk_has_next>
            params += '${pk}='+row.${pk}+'&';
                <#else>
            params += '${pk}='+row.${pk};
                </#if>
            </#list>
            layerTools.layerIframe('fa-pencil','编辑', '<#noparse>${ctx!}</#noparse>/${(table.tableNameCamel)!}/newModel?' + params, '800px', '500px');
        } else {
            layerTools.layerMsg('请选择一行数据进行编辑');
        }
    }

    /*删除 model*/
    function deleteModel() {
        var row = $("#dg").datagrid("getSelected");
        if (row != null) {
            var params="";
            <#list table.tablePrimaryKeys as pk>
                <#if pk_has_next>
            params += '${pk}='+row.${pk}+'&';
                <#else>
             params += '${pk}='+row.${pk};
                </#if>
            </#list>
            layerTools.confirm(3, '删除', '您确定要删除选中的记录吗?', function () {
                $.post('<#noparse>${ctx!}</#noparse>/${(table.tableNameCamel)!}/deleteAction?' + params, function (data) {
                    layerTools.layerMsg(data, function () {
                        $('#dg').datagrid('reload');
                    });
                }, "text").error(function(){ layerTools.AlertErrorMsg(); });
            });

        } else {
            layerTools.layerMsg('请选择一行进行删除');
        }
    }

    /*条件查询*/
    function queryModel() {
        var queryParams = {};
        queryParams['search_LIKE_test'] = $("#test").textbox("getValue");
        $('#dg').datagrid('load', queryParams);
    }
</script>
<table id="dg" class="easyui-datagrid"
       url="<#noparse>${ctx!}</#noparse>/${(table.tableNameCamel)!}/query"
       data-options="onDblClickRow:editModel"
       toolbar="#tb" rownumbers="true" border="false"
       fit="true"    fitColumns="true"
       striped="true"
       pagination="true" singleSelect="true"
       pageSize="40" pageList="[20,40]">
    <thead>
    <tr>
        <#list table.tablePrimaryKeys as pk>
            <th data-options="field:'${(pk)!}',checkbox:true"></th>
        </#list>
        <#list table.columnList as col>
        <#if !(col.primaryKey)>
            <th field="${(col.columnName)!}" width="100"><#if (col.columnComment)?? && col.columnComment != "">${(col.columnComment)!}<#else>${(col.columnName)!}</#if></th>
        </#if>
         </#list>
    </tr>
    </thead>
</table>

<div id="tb">
    <a onclick="newModel()" href="#" class="easyui-linkbutton" iconCls="e-icon fa fa-plus-square-o" plain="true">新增</a>
    <a onclick="editModel()" href="#" class="easyui-linkbutton" iconCls="e-icon fa fa-pencil-square-o" plain="true">编辑</a>
    <a onclick="deleteModel()" href="#" class="easyui-linkbutton  " iconCls="e-icon fa fa-trash-o" plain="true">删除</a>
    <span id="enterSpan" class="searchInputArea">
          <input id="test" prompt="test" class="easyui-textbox" style="width:120px; ">
          <a href="#" class="easyui-linkbutton" data-options="iconCls:'e-icon fa fa-search',plain:true" onclick="queryModel()">搜索</a>
    </span>
</div>
<script src="<#noparse>${ctx!}</#noparse>/res/layer/layer.js"></script>
<script src="<#noparse>${ctx!}</#noparse>/res/js/layer-tools.js"></script>
<#noparse>
</@layout>
</#noparse>
