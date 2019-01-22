

$(".sc-icon").mouseenter(function () {
    $("#settleup .dropdown-layer").show();
    flushCart();
});

$("#settleup .dropdown-layer").mouseleave(function () {
    $("#settleup .dropdown-layer").hide();
});

function flushCart() {
    //商品数量
    var count = 0;
    //商品总价
    var sum = 0;
    //空购物车显示元素
    var empty = "<div class=\"cart_empty\">\n<i class=\"cart_empty_img\"></i>\n购物车还没有商品赶紧选购吧\n</div>"
    $.get({
        url: "/cart/getAll",
        contentType: "json",
        success: function (data) {
            if (data.length != 0) {
                var info = " <div class=\"cart_hd\">\n" +
                    "  <h4 class=\"cart_hd_title\">最新加入的商品</h4>\n" +
                    "    </div>\n" +
                    "   <div class=\"cart_bd J_cart_bd\">\n" +
                    "    <ul class=\"cart_singlelist\">\n";
                for (var items in data){
                    var item = data[items];
                    console.log(data[items]);
                    info += " <li class=\"cart_item\" data-cartId = \""+item.cartId+"\""+" data-skuId=\""+item.skuId+"\">\n" +
                        " <div class=\"cart_item_inner\">\n" +
                        " <div class=\"cart_img\">\n" +
                        " <a class=\"cart_img_lk\" href=\"/goods/"+item.productId+"\">\n" +
                        " <img src=\"/static/images/product/"+item.picName+"\"" +
                        "  width=\"50px\" height=\"50px\" alt=\"\">\n" +
                        "  </a>\n" +
                        "  </div>\n" +
                        " <div class=\"cart_name\">\n" +
                        "   <a href=\"/goods/"+item.productId+"\">"+item.name+"</a>\n" +
                        "     </div>\n" +
                        "     <div class=\"cart_info\">\n" +
                        "     <div class=\"cart_price\">￥"+item.price+"x"+item.count+"</div>\n" +
                        "    <a class=\"cart_delete J_delete\" href=\"javascrpt:void(0)\">删除</a>\n" +
                        "     </div>\n" +
                        "    </div>\n" +
                        "     </li>\n";
                    count++;
                    sum += (item.price*item.count);

                }
                info+=  "  </ul>\n" +
                    "      </div>" +
                    "<div class=\"cart_ft\">\n" +
                    " <div class=\"cart_ft_info\">\n" +
                    "  共<span class=\"cart_num\">"+count+"</span>件商品 共计<span class=\"cart_num\">¥ "+sum+"</span>\n" +
                    "  </div>\n" +
                    " <a class=\"cart_ft_lk\" href=\"/cart/settle\" title=\"去购物车\">去购物车</a>\n" +
                    " </div>";
                $(".cart_pop").html(info);
            }else {
                $(".cart_pop").html(empty);
            }
            $(".cart_delete").click(function () {
                var $parent = $(this).parents(".cart_item");
                var cartId = $parent.attr("data-cartid");
                var skuId = $parent.attr("data-skuid");
                $.get({
                    url: "/cart/delItem?cartId=" + cartId + "&skuId=" + skuId,
                    success:function (data) {
                        flushCart();
                    }
                });
            });
        }
    });
}

