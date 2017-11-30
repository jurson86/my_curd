<#noparse><#include "/WEB-INF/views/common/common.html"/><@layout></#noparse>
<link rel="stylesheet" href="<#noparse>${ctx!}</#noparse>/res/pure/tables-min.css">
<script>
    function saveAction() {
        var url;
        var idVal = $("#${(meta.primaryKey)!}").val();
        if ($.trim(idVal) == "" || idVal == undefined || idVal == null) {
            url = '<#noparse>${ctx!}</#noparse>/${(meta.claLowName)!}/addAction';
        } else {
            url = '<#noparse>${ctx!}</#noparse>/${(meta.claLowName)!}/updateAction';
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
        <input id="${(meta.primaryKey)!}" name="${(meta.primaryKey)!}" type="hidden" value="<#noparse>${(</#noparse>${(meta.claLowName)!}.${(meta.primaryKey)!}<#noparse>)!}</#noparse>">
        <tbody>
        <#list meta.cols as col>
            <#if !(col.isPrimaryKey)?? >
                <tr>
                    <td><#if (col.remarks)??>${(col.remarks)!}<#else>${(col.name)!}</#if>：</td>
                    <td>
                        <input name="${(col.attrName)!}" value="<#noparse>${(</#noparse>${(meta.claLowName)!}.${(col.attrName)!}<#noparse>)!}</#noparse>" type="text" class="easyui-textbox"  data-options="required:true">
                    </td>
                </tr>
            </#if>
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
