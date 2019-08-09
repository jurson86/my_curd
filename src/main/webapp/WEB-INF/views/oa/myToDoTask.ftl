<#include "../common/common.ftl"/>
<@layout>
    <table id="dg" class="easyui-datagrid"
           url="${ctx!}/myToDoTask/query"
           data-options="onHeaderContextMenu: function(e, field){
                e.preventDefault();
                $(this).datagrid('columnMenu').menu('show', {
                    left:e.pageX,
                    top:e.pageY
                });
           }"
           rownumbers="true" border="false" singleSelect="true"
           fit="true" fitColumns="false"
           striped="true" pagination="false">
        <thead>
        <tr>
            <!--流程实例-->
            <th hidden="true" field="processInstanceId" width="100">流程ID</th>
            <th field="initiator" width="100" formatter="usernameFmt">申请人</th>
            <th field="processInstanceName" width="350" formatter="processInstanceDetailFmt">流程</th>
            <th field="taskName" width="150" formatter="highlightFmt">任务节点</th>
            <!--任务创建时间-->
            <th  hidden="true" field="createTime" width="200">任务时间</th>
            <th field="type" width="250" formatter="opeFmt">操作</th>
        </tr>
        </thead>
    </table>
    <script src="${ctx!}/static/plugins/easyui1.6.10/datagrid-extend.js"></script>
    <script src="${ctx!}/static/js/oa.js"></script>
    <script>
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
        function opeFmt(val, row) {
            if (row.type == 1) {
                var txt =  '<a  href="javascript:openCompleteForm(\'' + row.id + '\')"> [办理] </a>';
                if(row.taskDefinitionKey !== 'adjustForm'){
                    txt = txt +   '<a  href="javascript:openUtilsUser(true,\'转办\')"> [转办] </a>';
                }
                return txt;
            } else if (row.type == 2) {
                return '<a  href="javascript:claimAction(\'' + row.id + '\')"> [认领] </a>'
            } else {
                return '';
            }
        }


        /*任务委派，只所以叫 addUsersAction, 是选择用户 弹窗是个通用方法*/
        function addUsersAction(userInfoAry){
            if(userInfoAry.length===0 || userInfoAry.length>1){
                popup.msg('必须且仅可以选择一个用户');
                return;
            }
            var username = userInfoAry[0].username;
            var row = $("#dg").datagrid("getSelected");
            if(row==null){
                popup.msg('代办任务行未选中');
                return;
            }
            var taskId = row.id;
            $.post('${ctx!}/myToDoTask/changeAssigneeAction?taskId=' + taskId+"&username="+username, function (data) {
                if(data.state==='ok'){
                    popup.msg(data.msg, function () {
                        $('#dg').datagrid('reload');
                        popup.closeByIndex(winIndex);
                    });
                }else if(data.state==='error'){
                    popup.errMsg('系统异常',data.msg);
                }else{
                    popup.msg(data.msg);
                }
            }, "json").error(function(){ popup.errMsg();});
        }
    </script>
</@layout>
