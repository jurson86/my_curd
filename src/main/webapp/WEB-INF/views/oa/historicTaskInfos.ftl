<#-- zhangchuang  2019-07-23 15:50:30 -->
<#include "../common/common.ftl"/>
<@layout>
    <#if historicTaskInfos?size gt 0>
        <table class=" pure-table pure-table-horizontal  fullWidthTable"  style="border: none;" >
            <thead>
            <tr>
                <th>名称</th>
                <th>审批人</th>
                <th>开始时间</th>
                <th>结束时间</th>
                <th>意见</th>
            </tr>
            </thead>
            <tbody>
            <#list  historicTaskInfos as info>
                <tr>
                    <td>${(info.name)!}</td>
                    <td>${(info.assignee)!}</td>
                    <td>${(info.startTime?string("yyyy-MM-dd"))!}</td>
                    <td>${(info.endTime?string("yyyy-MM-dd"))!'当前节点'}</td>
                    <td>
                        <#list info.comments as comment>
                            ${comment!}
                        </#list>
                    </td>
                </tr>
            </#list>
            </tbody>
        </table>
     <#else >
        暂无流转记录（如果看到这个流程就不正常）
    </#if>
</@layout>
