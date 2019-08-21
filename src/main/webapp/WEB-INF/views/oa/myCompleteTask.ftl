<#include "../common/common.ftl"/>
<@layout>
    <table id="dg" class="easyui-datagrid"
           url="${ctx!}/myCompleteTask/query"
           data-options="onHeaderContextMenu: function(e, field){
                e.preventDefault();
                $(this).datagrid('columnMenu').menu('show', {
                    left:e.pageX,
                    top:e.pageY
                });
           }"
           toolbar="#tb" rownumbers="true" border="false"
           fit="true"    fitColumns="false" nowrap="false"
           striped="false"  pagination="true" singleSelect="true"
           pageSize="40" pageList="[20,40]">
        <thead>
        <tr>
            <!--流程实例-->
            <th hidden="true" field="processInstanceId" width="100" >流程Id</th>
            <th field="initiator" width="100" formatter="usernameFmt">申请人</th>
            <th field="processInstanceName" width="300" formatter="detailFmt">流程</th>

            <!--流程实例 开始 结束时间-->
            <th  field="startTime" width="200">开始时间</th>
            <th  field="endTime" width="150">结束时间</th>

            <th field="statue" width="200" formatter="statueFmt">流程状态</th>
        </tr>
        </thead>
    </table>
    <div id="tb">
        <div id="searchSpan" class="searchInputAreaDiv"  style="text-align: left; padding: 10px 0 10px 50px">
            <input name="extra_processName" prompt="流程名" class="easyui-textbox" style="width:180px;">
            <span style="display: inline-block;width: 20px;"></span>
            <input name="extra_applyUser" prompt="发起人" class="easyui-textbox" style="width:150px; ">
            <a href="#" class="easyui-linkbutton searchBtn"  data-options="iconCls:'iconfont icon-search',plain:true"
               onclick="queryModel('dg','searchSpan')">搜索</a>
        </div>
    </div>
    <script src="${ctx!}/static/plugins/easyui1.6.10/datagrid-extend.js"></script>
    <script src="${ctx!}/static/js/dg-curd.js"></script>
    <script>
        function statueFmt(val,row){
            var ret = '';
            if(row.endTime ==null){
                ret = '<span class="datagrid-cell-highlight">正运行</span>';
            } else {
                ret = '已结束';
            }
            return ret;
        }
        function detailFmt(val,row){
            var ret;
            if(row.endTime ==null){
                ret =  '<a  href="javascript:openProcessInstanceDetail(true,\''+row.processInstanceId+'\')">'+val+'</a>';
            } else {
                ret =  '<a  href="javascript:openProcessInstanceDetail(false,\''+row.processInstanceId+'\')">'+val+'</a>';
            }
            return ret;
        }
    </script>
    <script src="${ctx!}/static/js/oa.js"></script>
</@layout>
