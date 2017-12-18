<#noparse><#include "/WEB-INF/views/common/common.html"/><@layout></#noparse>
<link rel="stylesheet" href="<#noparse>${ctx!}</#noparse>/res/pure/tables-min.css">
<script>
    function saveAction() {
        var url;
        var pkVAry =[];
        <#list table.tablePrimaryKeys as pk>
            var ${(pk)!}Val = $("#${(pk)!}").val();
            pkVAry.push(${(pk)!}Val);
        </#list>

        if ($.trim(pkVAry[0]) == "" || pkVAry[0] == undefined || pkVAry[0] == null) {
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
                    parent.window.location.reload();
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
                <#list table.tablePrimaryKeys as pk>
                    <#if col.columnName !=pk >
                    <tr>
                        <td><#if (col.columnComment)??>${(col.columnComment)!}<#else>${(col.columnName)!}</#if>：</td>
                        <td>
                            <input name="${(col.columnNameCamel)!}" value="<#noparse>${(</#noparse>${(table.tableNameCamel)!}.${(col.columnNameCamel)!}<#noparse>)!}</#noparse>" type="text" class="easyui-textbox"  data-options="required:true">
                        </td>
                    </tr>
                    </#if>
                </#list>
        </#list>
        </tbody>
    </table>
</form>
<div id="toolbars" style="text-align:center; margin-top: 20px;">
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'" onclick="saveAction()">确定</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'"
       onclick="parent.layer.close(parent.layer.getFrameIndex(window.name));">取消</a>
</div>
<script src="<#noparse>${ctx!}</#noparse>/res/js/easyui-tree-tools.js"></script>
<#noparse></@layout></#noparse>
