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

/**
 * 加载时向服务器确认当前用户是否登录
 */
$(function () {
    $.getJSON("/login/check", function (data) {
        if (data.username != null) {
            $("#ttbar-login").html("<a href='' class=\"link-login\">欢迎&nbsp;"
                + data.username +
                "</a><div class=\"dropdown-layer\">\n" +
                "                        <div class=\"user-info\">\n" +
                "                            <p id=\"user-name\">当前用户 <span>" + data.username + "</span></p>\n" +
                "                            <button id=\"exit-item\" class='btn btn-danger'>退出</button>\n" +
                "                        </div>\n" +
                "                    </div>"
            );
            /**
             * 退出登录
             */
            $("#exit-item").click(function () {
                $.get(
                    "/login/exitAccount",function (data) {

                    }
                );
                window.location.href = "/login/tologin";
            });

        }
    });
});

/**
 * 显示用户信息和退出按钮
 */
$("#ttbar-login").hover(function () {
    $("#ttbar-login .dropdown-layer").show();

}, function () {
    $("#ttbar-login .dropdown-layer").hide();
});