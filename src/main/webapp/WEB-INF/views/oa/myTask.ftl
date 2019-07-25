<#include "../common/common.ftl"/>
<@layout>
<table id="dg" class="easyui-datagrid"
       url="${ctx!}/myTask/query"
       toolbar="#tb" rownumbers="true" border="false"
       fit="true"    fitColumns="false"x
       striped="false"  pagination="true"
       ctrlSelect="false" pageSize="40" pageList="[20,40]">
    <thead>
    <tr>
        <th field="processInstanceName" width="300">流程名</th>
        <#--<th field="id" width="100">id</th>-->
        <th field="name" width="150">任务名</th>
        <#--<th field="description" width="200">描述</th>-->
        <th field="createTime" width="250">任务创建时间</th>
        <#--<th field="formKey" width="250">formKey</th>-->
        <th field="executionId" width="250">executionId</th>
        <th field="assignee" width="250">assignee</th>
        <th field="ope" width="250" formatter="opeFmt">操作</th>
        <#--<th  field="dueDate" width="250">dueDate</th>-->
    </tr>
    </thead>
</table>
<div id="tb">
    <div id="searchSpan" class="searchInputAreaDiv" style="text-align: left;padding: 10px" >
          <input name="extra_taskName" prompt="任务名称" class="easyui-textbox" style="width:180px;">
          &nbsp; &nbsp; &nbsp; &nbsp;
          <input name="extra_instanceId" prompt="流程实例Id" class="easyui-textbox" style="width:180px; ">

          <a href="#" class="easyui-linkbutton searchBtn"  data-options="iconCls:'iconfont icon-search',plain:true"
               onclick="queryModel('dg','searchSpan')">搜索</a>
    </div>
</div>
<script src="${ctx!}/static/js/dg-curd.js"></script>
    <script>
        function openCompleteForm(id,title){
            popup.openIframe(title||'任务办理', '${ctx!}/myTask/goCompleteForm?id='+id, "1000px","90%");
        }
        function opeFmt(val,row,index){
            return '<a  href="javascript:openCompleteForm(\''+row.id+'\')"> [办理] </a>'
        }
    </script>
</@layout>
