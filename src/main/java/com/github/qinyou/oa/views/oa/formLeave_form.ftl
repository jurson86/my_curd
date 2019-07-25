<#-- zhangchuang  2019-07-23 15:50:30 -->
<#include "../common/common.ftl"/>
<@layout>
<form id="modelForm" method="POST" action="<#if formLeave?? >${ctx!}/formLeave/updateAction<#else>${ctx!}/formLeave/addAction</#if>">
    <table class=" pure-table pure-table-horizontal centerTable labelInputTable" >
        <input id="id" name="id"  type="hidden" value="${(formLeave.id)!}">
        <tbody>
        <tr>
            <td>
                请假类型:
            </td>
            <td>
                <input name="leaveType" value="${(formLeave.leaveType)!}" class="easyui-textbox"  data-options="required:true">
            </td>
        </tr>
        <tr>
            <td>
                开始时间:
            </td>
            <td>
                <input name="startTime" value="${(formLeave.startTime)!}" class="easyui-textbox"  data-options="required:true">
            </td>
        </tr>
        <tr>
            <td>
                结束时间:
            </td>
            <td>
                <input name="endTime" value="${(formLeave.endTime)!}" class="easyui-textbox"  data-options="required:true">
            </td>
        </tr>
        <tr>
            <td>
                请假原因:
            </td>
            <td>
                <input name="leaveReason" value="${(formLeave.leaveReason)!}" class="easyui-textbox"  data-options="required:true">
            </td>
        </tr>
        </tbody>
    </table>
</form>
<div  class="formBtnsDiv">
    <button  class=" pure-button button-small" onclick="popup.close(window.name);" >  <i class="iconfont icon-cancel"></i> 取消</button>
    <button  class=" button-small   pure-button pure-button-primary" onclick="saveAction('modelForm','reload','dg')" ><i class="iconfont icon-save"></i> 确定</button>
</div>
<script src="${ctx!}/static/js/dg-curd.js"></script>
</@layout>
