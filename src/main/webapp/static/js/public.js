/**
 * 搜索按钮
 */
$(".search-button").click(function () {
    var keyword = $(this).prev().val();
    if (keyword != "") {
        window.location.href = "/Search?keyword=" + keyword + "&page=1&pageCount=16";
    }
});

/**
 * 获取url参数
 * @param variable
 * @returns {*}
 */
function getQueryVariable(variable)
{
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i=0;i<vars.length;i++) {
        var pair = vars[i].split("=");
        if(pair[0] == variable){return pair[1];}
    }
    return(false);
}