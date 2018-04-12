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
