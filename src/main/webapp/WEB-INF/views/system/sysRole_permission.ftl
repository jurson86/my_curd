<#include "../common/common.ftl"/> <@layout>
<style>
    .toolbar{
        text-align: right;
        padding:5px 20px;
    }
    .content{
        padding: 10px;
        height: 90%;
        overflow: auto;
    }
    .btnWrapper{
        padding: 10px 0;
    }
</style>
<script type="text/javascript">
    /*数组去重*/
    Array.prototype.unique = function () {
        var res = [];
        var json = {};
        for (var i = 0; i < this.length; i++) {
            if (!json[this[i]]) {
                res.push(this[i]);
                json[this[i]] = 1;
            }
        }
        return res;
    };

    /*更新菜单*/
    function menuTreeUpdate() {
        var checkedNodes = $("#allMenuTree").tree("getChecked");
        var menuIds = [];
        for (var i = 0; i < checkedNodes.length; i++) {
            /* 只提交叶子节点 */
            if ($("#allMenuTree").tree("isLeaf", checkedNodes[i].target)) {
                menuIds.push(checkedNodes[i].id);
            }
        }
        $.post('${ctx!}/sysRole/menuTreeUpdate', {
            roleId: '${roleId!}',
            menuIds: menuIds.join(",")
        }, function (data) {
            if (data.state === 'ok') {
                popup.msg(data.msg, function () {
                  /*  popup.close(window.name);*/
                });
            } else if (data.state === 'error') {
                popup.errMsg('系统异常', data.msg);
            } else {
                popup.msg(data.msg);
            }
        }, 'json').error(function () {
            popup.errMsg();
        });
    }


    /*更新按钮*/
    function buttonUpdate(){
       var params = $('#btnForm').serialize();
        $.post('${ctx!}/sysRole/buttonUpdate', params, function (data) {
            if (data.state === 'ok') {
                popup.msg(data.msg, function () {
                  /*  popup.close(window.name);*/
                });
            } else if (data.state === 'error') {
                popup.errMsg('系统异常', data.msg);
            } else {
                popup.msg(data.msg);
            }
        }, 'json').error(function () {
            popup.errMsg();
        });
    }
</script>
<div class="easyui-layout" fit="true" border="false"  >
    <div data-options="region:'center'">
        <div class="toolbar">
            <a href="#" class="easyui-linkbutton" plain="true" data-options="iconCls:'iconfont icon-save'" onclick="menuTreeUpdate()">菜单授权</a>
        </div>
        <hr style="border: 2px dashed lightgray;">
        <div class="content">
            <ul id="allMenuTree" class="easyui-tree"></ul>
        </div>
    </div>
    <div data-options="region:'east',split:true"   style="width:30%;" collapsible="false"  >
        <div class="toolbar">
            <a href="#" class="easyui-linkbutton" plain="true" data-options="iconCls:'iconfont icon-save'" onclick="buttonUpdate()">按钮授权</a>
        </div>
        <hr style="border: 2px dashed lightgray;">
        <form id="btnForm" class="content">
            <input type="hidden" name="roleId" value="${roleId!}">
            <div  id="btn-list">
            </div>
        </form>
    </div>
</div>

<script src="${ctx!}/static/js/easyui-tree-tools.js"></script>
<script>
    /*刷新按钮列表*/
    function refreshBtnList(menuId){
        var url = '${ctx!}/sysRole/buttonList?roleId=${roleId!}&menuId='+menuId;
        $.getJSON(url, function (data) {
            var tpl = '';
            var checkedFlag;
            data.map(function(v){
                tpl += '<div class="btnWrapper "><input class="easyui-checkbox btnItem" ' +
                   ' labelPosition="after"  name="btnItem"  value="'+v.id+'" label="'+v.buttonTxt+'" ';
                if(v.checkFlag!=null){
                    tpl+=' checked="true" ';
                }
                tpl +='></div>';
            });
            $('#btn-list').html(tpl);
            $.parser.parse('#btn-list');
        });
    }

    var easyTree = new EasyTree();
    function loadMenuTreeChecked() {
        var url = "${ctx!}/sysRole/menuTreeChecked?roleId=${roleId!}";
        $.getJSON(url, function (data) {
            data = easyTree.treeDataBuild(data, 'id', 'pid', 'text,state,checked,pid,iconCls');
            $("#allMenuTree").tree({
                data: data,
                checkbox: true,
                lines: true,
                onSelect: function (node) {
                    if ($("#allMenuTree").tree("isLeaf", node.target)) {
                        refreshBtnList(node.id);
                    }
                }
            });
        });
    }
    $(function () {
        loadMenuTreeChecked();
    });
</script>
</@layout>
