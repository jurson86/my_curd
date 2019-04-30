<#--按钮权限控制-->
<#macro hasBtnCode btnCode>
    <#if  !btnControl?? ||  btnCodes?seq_contains(btnCode)  >
        <#nested>
    </#if>
</#macro>
