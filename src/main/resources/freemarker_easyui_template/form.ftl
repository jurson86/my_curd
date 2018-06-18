<!-- 生成时间： ${generateDate!} -->
<#noparse><#include "/WEB-INF/views/common/common.html"/><@layout></#noparse>
<link rel="stylesheet" href="<#noparse>${ctx!}</#noparse>/res/pure/tables-min.css">
<script src="<#noparse>${ctx!}</#noparse>/res/js/util.js"></script>
<script>
    function saveAction() {
        var url;
        var pkVAry =[];
        <#list table.tablePrimaryKeys as pk>
        var ${(pk)!}Val = $("#${(pk)!}").val();
        pkVAry.push(${(pk)!}Val);
        </#list>

        if (isEmpty(pkVAry[0])) {
            url = '<#noparse>${ctx!}</#noparse>/${(table.tableNameCamel)!}/addAction';
        } else {
            url = '<#noparse>${ctx!}</#noparse>/${(table.tableNameCamel)!}/updateAction';
        }

        $('#modelForm').form('submit', {
            url: url,
            onSubmit: function() {
                return $(this).form('validate');
            },
            success: function (data) {
                parent.layerTools.layerMsg(data, function () {
                    /* parent.window.location.reload();*/
                    parent.$("#dg").datagrid("reload");
                    parent.layer.close(parent.layer.getFrameIndex(window.name));
                });
            }
        });
    }
</script>
</head>
<body style="padding: 10px 30px; ">
<form id="modelForm" method="POST">
    <table class=" pure-table pure-table-horizontal">
        <#list table.tablePrimaryKeys as pk>
            <input id="${(pk)!}" name="${(pk)!}" type="hidden" value="<#noparse>${(</#noparse>${(table.tableNameCamel)!}.${(pk)!}<#noparse>)!}</#noparse>">
        </#list>
        <tbody>
        <#list table.columnList as col>
                   <#if !(col.primaryKey)>
            <tr>
                <td>
                    <#if (col.columnComment)?? && col.columnComment != "" >${(col.columnComment)!}<#else>${(col.columnName)!}</#if>:
                </td>
                <td>
                    <input name="${(col.columnNameCamel)!}" value="<#noparse>${(</#noparse>${(table.tableNameCamel)!}.${(col.columnNameCamel)!}<#noparse>)!}</#noparse>" class="easyui-textbox"  data-options="required:true">
                </td>
            </tr>
                    </#if>
        </#list>
        </tbody>
    </table>
</form>
<div id="toolbars" style="text-align:center; margin-top: 20px;">
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'e-icon fa fa-save'" onclick="saveAction()">确定</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'e-icon fa fa-close'"
       onclick="parent.layer.close(parent.layer.getFrameIndex(window.name));">取消</a>
</div>
<#noparse></@layout></#noparse>
