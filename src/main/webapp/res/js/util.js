/**
 *  一些工具函数
 */
function notEmpty(v){
    if(v==null || v == undefined || $.trim(v)==""){
        return false;
    }
    return true;
}

function isEmpty(v){
    if(v==null || v == undefined || $.trim(v)==""){
        return true;
    }
    return false;
}

Date.prototype.Format = function (fmt) {
    var o = {
        "M+": this.getMonth() + 1,
        "d+": this.getDate(),
        "h+": this.getHours(),
        "m+": this.getMinutes(),
        "s+": this.getSeconds(),
        "q+": Math.floor((this.getMonth() + 3) / 3),
        "S": this.getMilliseconds()
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
};

var dateTool={
    /* 时间字符串转日期 */
    strToDate:function(dateStr){
        // 浏览器兼容,替换 - 为 /
        dateStr = dateStr.replace(/-/g,"/");
        return new Date(dateStr );
    },
    /* 日期格式化 */
    dateformat:function(date,pattern){
        return date.Format(pattern);
    }
}