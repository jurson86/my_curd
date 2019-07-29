<#include "../common/common.ftl"/>
<@layout>
    <table id="dg" class="easyui-datagrid"
           url="${ctx!}/myToDoTask/query"
           rownumbers="true" border="false" singleSelect="true"
           fit="true" fitColumns="false"
           striped="true" pagination="false">
        <thead>
        <tr>
            <th field="processInstanceName" width="350" formatter="processInstanceDetailFmt">流程</th>
            <th field="id" width="100">任务Id</th>
            <th field="taskName" width="100">任务名</th>
            <th field="createTime" width="250">任务创建时间</th>
            <th field="type" width="250" formatter="opeFmt">操作</th>
        </tr>
        </thead>
    </table>
    <script src="${ctx!}/static/js/oa.js"></script>
    <script>
        var ctx = "${ctx!}"; /*oa.js 需要*/
        function processInstanceDetailFmt(val,row) {
            return  '<a href="javascript:openProcessInstanceDetail(true,\''+row.processInstanceId+'\',\'流程详情\')">'+val+'</a>';
        }

        /*打开办理表单*/
        function openCompleteForm(id, title) {
            popup.openIframe(title || '任务办理', '${ctx!}/myToDoTask/goCompleteForm?id=' + id, "1000px", "96%");
        }

        /*认领任务*/
        function claimAction(id) {
            $.get('${ctx!}/myToDoTask/claimAction?id=' + id, function (data) {
                if (data.state === 'ok') {
                    popup.msg(data.msg, function () {
                        $('#dg').datagrid('reload');
                    });
                } else if (data.state === 'error') {
                    popup.errMsg('系统异常', data.msg);
                } else {
                    popup.msg(data.msg);
                }
            }, "json").error(function () {
                popup.errMsg();
            });
        }

        /*操作按钮格式化*/
        function opeFmt(val, row, index) {
            if (row.type == 1) {
                return '<a  href="javascript:openCompleteForm(\'' + row.id + '\')"> [办理] </a>'
            } else if (row.type == 2) {
                return '<a  href="javascript:claimAction(\'' + row.id + '\')"> [认领] </a>'
            } else {
                return '';
            }
        }
    </script>
</@layout>
