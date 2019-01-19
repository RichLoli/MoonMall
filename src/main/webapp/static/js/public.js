/**
 * 搜索按钮
 */
$(".search-button").click(function () {
    var keyword = $(this).prev().val();
    if (keyword != "") {
        window.location.href = "/Search?keyword=" + keyword + "&page=1&pageCount=16";
    }
});