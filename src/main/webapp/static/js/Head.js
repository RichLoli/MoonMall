/**
 * 加载时向服务器确认当前用户是否登录
 */
$(function () {
    $.getJSON("/login/check", function (data) {
        if (data.username != null) {
            $("#ttbar-login").html("<a href='' class=\"link-login\">欢迎&nbsp;"
                + data.username +
                "</a><div class=\"dropdown-layer\" style='display: none'>\n" +
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
    $(".dropdown-layer").show();

}, function () {
    $(".dropdown-layer").hide();
});

