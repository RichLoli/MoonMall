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

$

$(".sc-icon").mouseenter(function () {
    $("#settleup .dropdown-layer").show();
    var empty = "<div class=\"cart_empty\">\n<i class=\"cart_empty_img\"></i>\n购物车还没有商品赶紧选购吧\n</div>"
    $.get({
        url: "/cart/getAll",
        contentType: "json",
        success: function (data) {
            if (data.length != 0) {
                var info = " <div class=\"cart_hd\">\n" +
                    "                                <h4 class=\"cart_hd_title\">最新加入的商品</h4>\n" +
                    "                            </div>\n" +
                    "                            <div class=\"cart_bd J_cart_bd\">\n" +
                    "                                <ul class=\"cart_singlelist\">\n";
                for (var items in data){
                    var item = data[items];
                    console.log(data[items]);
                    info += "                                    <li class=\"cart_item\">\n" +
                        "                                        <div class=\"cart_item_inner\">\n" +
                        "                                            <div class=\"cart_img\">\n" +
                        "                                                <a class=\"cart_img_lk\" href=\"/goods/"+item.productId+"\">\n" +
                        "                                                    <img src=\"/static/images/product/"+item.picName+"\"" +
                        "                                                         width=\"50px\" height=\"50px\" alt=\"\">\n" +
                        "                                                </a>\n" +
                        "                                            </div>\n" +
                        "                                            <div class=\"cart_name\">\n" +
                        "                                                <a href=\"\">"+item.name+"</a>\n" +
                        "                                            </div>\n" +
                        "                                            <div class=\"cart_info\">\n" +
                        "                                                <div class=\"cart_price\">￥"+item.price+"x"+item.count+"</div>\n" +
                        "                                                <a class=\"cart_delete J_delete\" href=\"\">删除</a>\n" +
                        "                                            </div>\n" +
                        "                                        </div>\n" +
                        "                                    </li>\n";
                }
                info+=  "                                </ul>\n" +
                    "                            </div>";
                $(".cart_pop").html(info);
            }else {
                $(".cart_pop").html(empty);
            }
        }
    });
});

$("#settleup .dropdown-layer").mouseout(function () {
    // $("#settleup .dropdown-layer").hide();
});
