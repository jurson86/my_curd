/**
 * Created by Administrator on 2017/10/28.
 * layer 弹出层  http://layer.layui.com/hello.html
 */

var layerTools = layerTools ||{};
(function(){

    $.ajaxSetup({type: "POST",cache:false});

    //配置layer初始化配置
    layer.config({
        shift: -1,    // 0-6的动画形式，-1不开启
        shade: 0.05  //遮罩透明度
    });

    /**
     * 打开 layer iframe 弹出层
     * @param area ['330','330']
     * @param title 窗口标题
     * @param content 内容 http://layer.layui.com/api.html#content
     * @param fun 窗口关闭回调函数
     * @param index 当前窗口, 接收返回 var index = OAutil.openLayerDialog() 在传回来
     * @returns {*}
     */
    layerTools.layerIframe=function(title,url,width,height,fun,index){
        if(width==undefined)
            width='80%';
        if(height==undefined)
            height='90%';
        var index =  layer.open({
            skin: 'layui-layer-molv',
            type: 2,   // iframe
            title: ['<i class="fa fa-th-large"></i>&nbsp;&nbsp;'+title,'background:#00aced;line-height:40px;height:40px;padding: 0 15px'],
            maxmin: true,
            shadeClose: true, //
            area : [width , height],
            content: [url],
            cancel :function(){
                if(fun!=null){
                    fun(index);
                }
                layer.close(index);
            }
        });
        return index ;
    }

    /**
     * 打开一个dialog
     * @param area
     * @param title
     * @param content
     * @param btn
     * @param yesCallBack
     * @param cancelCallBack
     * @param index
     * @returns {*}
     */
    layerTools.layerDialog=function(area,title,content,btn,yesCallBack,cancelCallBack,index){
        var index =  layer.open({
            type: 1, //page层
            skin: 'layui-layer-lan',
            shadeClose: true, //
            area: area?area:"",
            title:title,
            top:20,
            closeBtn: 0, //不显示关闭按钮
            content: content,
            btn: btn,//按钮
            yes:function(){
                yesCallBack(index)
            },
            cancel :function(){
                cancelCallBack(index);
            }
        });
        return index ;
    }


    /*1 layer 弹出层 */
    // 自动消失的 弹出信息
    layerTools.layerMsg = function(msg,fun){
        layer.msg(msg,{time:1000},fun);

    }

    /**
     * 加载
     * @param cbk 回调函数
     */
    layerTools.layerLoading=function(cbk){
        var  li = layer.load();
        cbk();
        layer.close(li);
    }



    // 询问框
    layerTools.confirm = function(icon,title,msg,yesFun,noFun){
        layer.confirm(msg, {
           /* skin: 'layui-layer-molv',*/
            icon: icon,
            title:title,
            btn: ['确定','取消']
        }, function(){
            if(yesFun!=null){
                yesFun();
            }
        }, function(index){
            if(noFun!=null){
                noFun();
            }
            layer.close(index);
        });
    }
})();
