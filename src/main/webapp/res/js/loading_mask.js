var loadingMask = {
    loadingImg: "/res/image/loading-blue.gif",
    loadingTxt:'加载中...',
    createMask:function(){
        const that = this;

        var clientHeight=document.documentElement.clientHeight;
        var clientWidth=document.documentElement.clientWidth;

        var loadingTop = clientHeight > 61 ? (clientHeight - 61) / 2 : 0;
        var loadingLeft= clientWidth > 215 ? (clientWidth - 215) / 2 : 0;

        var html =  '<div id="loadingDiv" style="position:absolute;left:0;width:100%;height:'
        + clientHeight + 'px;top:0;background:white;opacity:1;filter:alpha(opacity=80);z-index:10000;"><div style="position: absolute; cursor1: wait; left: '
        + loadingLeft + 'px; top:' + loadingTop + 'px; width:100px;; height: 57px; line-height: 57px; padding-left: 50px; padding-right: 5px;' +
        ' background:  url(' + that.loadingImg + ') no-repeat scroll 5px 8px;  color: #696969 ;"> '+that.loadingTxt+'</div></div>';

        document.write(html);
    },
    removeMask:function(){
        var loadingDiv = document.getElementById('loadingDiv');
        loadingDiv.parentNode.removeChild(loadingDiv);
    },
    /*外部调用*/
    bindInit:function(){
        const that = this;
        that.createMask();
        document.onreadystatechange = function(){
            if (document.readyState == "complete") {
                that.removeMask();
            }
        }
    }
}
loadingMask.bindInit();
