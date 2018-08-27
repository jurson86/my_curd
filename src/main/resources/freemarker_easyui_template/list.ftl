<!-- 生成时间： ${generateDate!} -->
<#noparse><#include "/WEB-INF/views/common/common.html"/> <@layout></#noparse>
<link rel="stylesheet" href="<#noparse>${ctx!}</#noparse>/res/layer/theme/default/layer.css">
</head>
<body>
<script type="text/javascript">

    /*新增 model*/
    function newModel() {
        popup.openIframe('新建', '<#noparse>${ctx!}</#noparse>/${(table.tableNameCamel)!}/newModel', '800px', '500px');
    }

    /*编辑 model*/
    function editModel() {
        var rows = $("#dg").datagrid("getSelections");
        if (rows.length==1) {
            var row = rows[0];
            /*有且只有一个主键*/
            popup.openIframe('编辑', '<#noparse>${ctx!}</#noparse>/${(table.tableNameCamel)!}/newModel?${(table.tablePrimaryKeys[0])!}=' + row.${(table.tablePrimaryKeys[0])!}, '800px', '500px');
        } else {
            popup.msg('请选择一行数据进行编辑');
        }
    }

    /*删除 model*/
    function deleteModel() {
        var rows = $("#dg").datagrid("getSelections");
        if (rows.length!=0) {
            /*有且只有一个主键*/
            var ${(table.tablePrimaryKeys[0])!}Ary =[];
            rows.forEach(function (row) {
                ${(table.tablePrimaryKeys[0])!}Ary.push(row.${(table.tablePrimaryKeys[0])!});
            });
            popup.openConfirm(3, '删除', '您确定要删除选中的'+rows.length+'条记录吗?', function () {
                $.post('<#noparse>${ctx!}</#noparse>/${(table.tableNameCamel)!}/deleteAction?${(table.tablePrimaryKeys[0])!}s='+${(table.tablePrimaryKeys[0])!}Ary.splice(',') , function (data) {
                    popup.msg(data, function () {
                        $('#dg').datagrid('reload');
                    });
                }, "text").error(function(){ popup.errMsg(); });
            });

        } else {
            popup.msg('请至少选择一行进行删除');
        }
    }

    /*条件查询*/
    function queryModel() {
        var queryParams = {};
        queryParams['search_LIKE_test'] = $("#test").textbox("getValue");

        /*load 从第一页加载，reload 重载本页，此处要用load*/
        $('#dg').datagrid('load', queryParams);
    }
</script>
<table id="dg" class="easyui-datagrid"
       url="<#noparse>${ctx!}</#noparse>/${(table.tableNameCamel)!}/query"
       data-options="onDblClickRow:editModel"
       toolbar="#tb" rownumbers="true" border="false"
       fit="true"    fitColumns="true"
       striped="true"
       pagination="true"
       ctrlSelect="true"
       pageSize="40" pageList="[20,40]">
    <thead>
    <tr>
        <!--有且只有一个主键-->
        <th data-options="field:'${(table.tablePrimaryKeys[0])!}',checkbox:true"></th>
        <#list table.columnList as col>
        <#if !(col.primaryKey)>
        <th field="${(col.columnName)!}" width="100"><#if (col.columnComment)?? && col.columnComment != "">${(col.columnComment)!}<#else>${(col.columnName)!}</#if></th>
        </#if>
         </#list>
    </tr>
    </thead>
</table>

<div id="tb">
    <a onclick="newModel()" href="#" class="easyui-linkbutton" iconCls="e-icon iconfont icon-font-add" plain="true">新增</a>
    <a onclick="editModel()" href="#" class="easyui-linkbutton" iconCls="e-icon iconfont icon-font-edit" plain="true">编辑</a>
    <a onclick="deleteModel()" href="#" class="easyui-linkbutton  " iconCls="e-icon iconfont icon-font-delete" plain="true">删除</a>
    <span id="enterSpan" class="searchInputArea">
          <input id="test" prompt="test" class="easyui-textbox" style="width:120px; ">
          <a href="#" class="easyui-linkbutton" data-options="iconCls:'e-icon iconfont icon-font-search',plain:true" onclick="queryModel()">搜索</a>
    </span>
</div>
<script src="<#noparse>${ctx!}</#noparse>/res/layer/layer.js"></script>
<script src="<#noparse>${ctx!}</#noparse>/res/js/popup-tools.js"></script>
<#noparse>
</@layout>
</#noparse>
