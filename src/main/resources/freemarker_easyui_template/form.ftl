<!-- 生成时间： ${generateDate!} -->
<#noparse><#include "/WEB-INF/views/common/common.html"/><@layout></#noparse>
<link rel="stylesheet" href="<#noparse>${ctx!}</#noparse>/res/css/form.css">
<link rel="stylesheet" href="<#noparse>${ctx!}</#noparse>/res/pure/tables-min.css">
<script src="<#noparse>${ctx!}</#noparse>/res/js/util.js"></script>
<script>
    function saveAction() {
        var url;

        /*有且只有一个主键*/
        var ${(table.tablePrimaryKeys[0])!}Val = $('#${(table.tablePrimaryKeys[0])!}').val();

        if (isEmpty(${(table.tablePrimaryKeys[0])!}Val)) {
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
                parent.popup.msg(data, function () {
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
        <!--有且只有一个主键-->
        <input id="${(table.tablePrimaryKeys[0])!}" name="${(table.tablePrimaryKeys[0])!}"
               type="hidden" value="<#noparse>${(</#noparse>${(table.tableNameCamel)!}.${(table.tablePrimaryKeys[0])!}<#noparse>)!}</#noparse>">
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
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'iconfont icon-save'" onclick="saveAction()">确定</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'iconfont icon-cancel'"
       onclick="parent.layer.close(parent.layer.getFrameIndex(window.name));">取消</a>
</div>
<#noparse></@layout></#noparse>
