/**
 * 废弃,  替换为 popup-tools.js
 * layer 弹出层 封装
 * 弹窗组件和layer 耦合太深并不好，这个文件更应该是 弹窗-tools.js，内部具体封装弹窗工具
 */
var layerTools = layerTools || {};
(function () {
    /*配置layer初始化配置*/
    layer.config({
        shift: -1, /*0-6的动画形式，-1不开启，开启动画可能导致 dialog 异常情况*/
        shade: 0.1 /*遮罩透明度*/
    });

    /**
     * iframe 弹出层
     * @param faCls  弹出框标题左侧图标（字体图标名 fontawesome）
     * @param title  弹窗标题
     * @param url    iframe url
     * @param width  弹窗宽度 默认父80%
     * @param height 弹窗高度 默认 父90%
     * @param cbkfun 回调函数
     * @returns index  当前弹窗
     */
    layerTools.layerIframe = function (faCls, title, url, width, height, cbkfun) {
        if (width == undefined)
            width = '80%';
        if (height == undefined)
            height = '90%';
        var index =layer.open({
            skin: 'layui-layer-molv', /*官方样式*/
            type: 2,
            title: ['<i class="fa ' + faCls + '"></i>&nbsp;&nbsp;' + title, 'background:#2196F3; line-height:30px;height:30px;padding: 0 10px'],
            maxmin: true,
            shadeClose: true,
            area: [width, height],
            offset:'30px',
            content: [url],
            cancel: function () {
                // 取消按钮点击 之前调用回调函数
                if (cbkfun != null) {
                    cbkfun(index);
                }
                // 关闭当前窗口
                layer.close(index);
            }
        });
        return index;
    }


    /**
     * dialog 弹出窗口 （ajax page)
     * @param area   宽高数组 eq: ['500px', '60%'],
     * @param title  弹窗标题
     * @param content 弹窗内容 html 文本
     * @param btn     按钮数组  ['确定','取消']，只是改变文字或者不显示按钮
     * @param yesCallBack  确定按钮回调
     * @param cancelCallBack 取消按钮回调
     * @returns  当前窗口
     */
    layerTools.layerDialog = function (area, title, content, btn, yesCallBack, cancelCallBack) {
        var index = layer.open({
            type: 1,
            skin: 'layui-layer-lan', /*官方主题*/
            shadeClose: true,
            area: area ? area : "",
            offset:'30px',
            title: [title, 'background:#607D8B; line-height:30px;height:30px;padding: 0 10px'],
            closeBtn: 1, /*显示关闭按钮*/
            content: content,
            btn: btn,//按钮
            yes: function () {
                if (yesCallBack != null) {
                    yesCallBack(index);
                }
            },
            cancel: function () {
                if (cancelCallBack != null) {
                    cancelCallBack(index);
                }
                // 关闭当前窗口
                layer.close(index);
            }
        });
        return index;
    }


    /**
     *  自动消失的 弹出信息框
     * @param msg 消息内容
     * @param fun 回调函数
     */
    layerTools.layerMsg = function (msg, fun) {
        /*easyui form submit 没有 error500 监听，后台发生500 错误会跳转到500.html页面，此处判断包含html标签认为发生500错误*/
        if(msg.indexOf('<')>=0){
            layerTools.AlertErrorMsg();
            return;
        }
        layer.msg(msg, {time: 1000}, fun);
    }

    /**
     *  加载遮罩层
     * @param cbfun 回调函数
     */
    layerTools.layerLoading = function (cbfun) {
        var i = layer.load();
        if(cbfun!=null){
            cbfun();
        };
        layer.close(i);
    }


    /**
     * 询问弹出框
     * @param icon  图标名字（layer内置）
     * @param title 弹窗标题
     * @param msg   询问框内容
     * @param yesFun 确定回调函数
     * @param noFun  取消回调函数
     */
    layerTools.confirm = function (icon, title, msg, yesFun, noFun) {
        layer.confirm(msg, {
            icon: icon,
            offset:['30px','200px'],
            title: [title, 'background:#2196F3; color:white; line-height:30px;height:30px;padding: 0 10px'],
            btn: ['确定', '取消']
        }, function () {
            if (yesFun != null) {
                yesFun();
            }
        }, function (index) {
            if (noFun != null) {
                noFun();
            }
            layer.close(index);
        });
    }


    layerTools.AlertErrorMsg = function(title,msg){
        title = title?title:'悄悄告诉你';
        msg = msg ? msg:'系统发生严重错误了哥们！赶紧联系管理员。';
        var mlayer;
        if(top.location!=self.location){
            mlayer = parent.layer;
        }else{
            mlayer = layer;
        }
        mlayer.alert(msg, {
            icon: 5,
            title: [title, 'background:#e74b3b; color:white; line-height:30px;height:30px;padding: 0 10px'],
            btn: [],
            shadeClose: true,
            resize:false,
        });
    }
})();
