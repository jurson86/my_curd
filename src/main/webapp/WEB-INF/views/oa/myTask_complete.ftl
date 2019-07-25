<#-- zhangchuang  2019-07-23 15:50:30 -->
<#include "../common/common.ftl"/>
<@layout>
    <style>
        .userCard {
            margin-bottom: 5px;
            padding: 5px 2px;
            text-align: center;
            font-size: 20px;
            font-weight: 500;
        }
    </style>
    <div class="easyui-tabs" fit="true" plain="true">
        <div title="详情" style="padding:10px">
            <div class="userCard">
                ${processInstanceName!}
            </div>
            <div class="easyui-panel" title="申请内容" style="width:100%;margin-bottom: 20px;"
                 data-options="href:'${ctx!}/oa/processInstanceFormDetail?businessForm=${businessForm!}&businessKey=${businessKey}',
                   collapsible:true,closable:true">
            </div>

            <div class="easyui-panel" title="审批操作 (${taskName!})" style="width:100%;margin-bottom: 20px;"
                 data-options="collapsible:true,closable:true">
                <form id="modelForm" method="POST" action="${ctx!}/myTask/completeAction">
                    <input type="hidden" name="id" value="${taskId!}">
                    <input type="hidden" name="processInstanceId" value="${processInstanceId!}">
                    <table class=" pure-table pure-table-horizontal  labelInputTable fullWidthTable" style="border-top: none;border-left: none;border-right: none;" >
                        <#if taskDescription?? >
                            <tr>
                                <td>注意事项:</td>
                                <td style="color: #fc5832;">${taskDescription!}</td>
                            </tr>
                        </#if>
                        ${renderedTaskForm!}
                        <tr>
                            <td>备注（操作阐述）：</td>
                            <td>
                                <input id="fp_comment" name="fp_comment"   class="easyui-textbox" multiline="true" required="true" style="width:90%; height:80px" value="正常通过" />
                            </td>
                        </tr>

                    </table>
                </form>
                <div style="padding: 10px; text-align: right;background-color: #fafafa">
                    <button  class=" button-small pure-button pure-button-primary" onclick="saveAction('modelForm','reload','dg')" >办理</button>
                </div>
            </div>
            <div class="easyui-panel" title="审批流转" style="width:100%;margin-bottom: 20px"
                 data-options="href:'${ctx!}/oa/historicTaskInstances?id=${processInstanceId!}',
                  collapsible:true,closable:true">
            </div>
        </div>
        <div title="流程图" fit="true">
            <img style="max-width:100%;" src="${ctx!}/oa/instanceDiagram?id=${processInstanceId!}" alt="流程图">
        </div>
    </div>
    <script src="${ctx!}/static/js/dg-curd.js"></script>
</@layout>
