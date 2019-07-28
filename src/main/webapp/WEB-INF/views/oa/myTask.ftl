<#include "../common/common.ftl"/>
<@layout>
<table id="dg" class="easyui-datagrid"
       url="${ctx!}/myToDoTask/query"
       rownumbers="true" border="false"
       fit="true"    fitColumns="false"x
       striped="true"  pagination="false">
    <thead>
    <tr>
        <th field="id" width="100">任务Id</th>
        <th field="taskName" width="100">任务名</th>
        <th field="processInstanceName" width="350">流程名</th>
        <th field="createTime" width="250">任务创建时间</th>
        <th field="type" width="250" formatter="opeFmt">操作</th>
    </tr>
    </thead>
</table>
<script>
    /*打开办理表单*/
    function openCompleteForm(id,title){
        popup.openIframe(title||'任务办理', '${ctx!}/myToDoTask/goCompleteForm?id='+id, "1000px","90%");
    }

    /*认领任务*/
    function claimAction(id){
        $.get('${ctx!}/myToDoTask/claimAction?id='+id, function (data) {
            if(data.state==='ok'){
                popup.msg(data.msg, function () {
                    $('#dg').datagrid('reload');
                });
            }else if(data.state==='error'){
                popup.errMsg('系统异常',data.msg);
            }else{
                popup.msg(data.msg);
            }
        }, "json").error(function(){ popup.errMsg(); });
    }

    function opeFmt(val,row,index){
        if(row.type==1){
            return '<a  href="javascript:openCompleteForm(\''+row.id+'\')"> [办理] </a>'
        }else if(row.type==2){
            return '<a  href="javascript:claimAction(\''+row.id+'\')"> [认领] </a>'
        }else{
            return '';
        }
    }
</script>
</@layout>
