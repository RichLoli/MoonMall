$(function () {
    $.get("getAll", function (data) {
        var info = '';
        if (data.length == 0) {
            info += '<div class="cart-empty">\n' +
                '<div class="message">\n' +
                '<ul>\n';
            if ($("#isLogin").val() == '0') {
                info += '<li class="txt">\n' +
                    '购物车内暂时没有商品，登录后将显示您之前加入的商品\n' +
                    '</li>\n' +
                    '<li>\n' +
                    '<a href="#none" class="btn-1 login-btn mr10">登录</a>\n' +
                    '<a href="/index.jsp" class="ftx-05">\n' +
                    '去购物&gt;\n' +
                    '</a>\n' +
                    '</li>\n';
            } else {
                info += '<li class="txt">\n' +
                    '购物车空空的哦~，去看看心仪的商品吧~\n' +
                    '</li>\n' +
                    ' <li>\n' +
                    '<a href="/index.jsp" class="ftx-05">\n' +
                    ' 去购物&gt;\n' +
                    '</a>\n' +
                    '</li>\n';
            }
            info += ' </ul>\n' +
                ' </div>\n' +
                '</div>';
            $("#container").find(".w:eq(0)").append(info);
        } else {
            if ($("#isLogin").val() == '0') {
                $("#chunjie").after("<div class=\"nologin-tip\">\n" +
                    "<span class=\"wicon\"></span>\n" +
                    "您还没有登录！登录后购物车的商品将保存到您账号中\n" +
                    "<a class=\"btn-1 ml10\" href=\"#none\">立即登录</a>\n" +
                    "</div>");
            }
            $(".cart-filter-bar").append("<ul class=\"switch-cart\">\n" +
                "                <li class=\"switch-cart-item curr\">\n" +
                "                    <a href=\"#\">\n" +
                "                        <em>全部商品</em>\n" +
                "                        <span class=\"number\"></span>\n" +
                "                    </a>\n" +
                "                </li>\n" +
                "            </ul>" +
                "<div class=\"clr\"></div>\n" +
                "            <div class=\"w-line\">\n" +
                "                <div class=\"floater\" style=\"width: 89px; left: 0px;\"></div>\n" +
                "            </div>");
            info += '<div class="cart-warp">\n' +
                '        <div class="w">\n' +
                '            <div id="jd-cart">\n' +
                '                <div class="cart-main cart-main-new">\n' +
                '                    <div class="cart-thead">\n' +
                '                        <div class="column t-checkbox">\n' +
                '                            <div class="cart-checkbox">\n' +
                '                                <input type="checkbox" id="toggle-checkboxes_up" name="toggle-checkboxes"\n' +
                '                                       class="jdcheckbox" clstag="clickcart|keycount|xincart|cart_allCheck"\n' +
                '                                       >\n' +
                '                                <label class="checked" for="">勾选全部商品</label>\n' +
                '                            </div>\n' +
                '                            全选\n' +
                '                        </div>\n' +
                '                        <div class="column t-goods">商品</div>\n' +
                '                        <div class="column t-props"></div>\n' +
                '                        <div class="column t-price">单价</div>\n' +
                '                        <div class="column t-quantity">数量</div>\n' +
                '                        <div class="column t-sum">小计</div>\n' +
                '                        <div class="column t-action">操作</div>\n' +
                '                    </div>\n' +
                '                    <div id="cart-list">\n' +
                '                        <div class="cart-item-list" id="cart-item-list-01">\n' +
                '                            <div class="cart-tbody">\n' +
                '                                <div class="item-list" style="z-index: auto;">\n';
            for (var item in data) {
                var i = data[item];
                info += '<div class="item-single  item-item " data-proId="'+i.productId+'" data-skuId="'+i.skuId+'" ' +
                    '                                          data-select="0" data-price="'+i.price+'" data-sum="'+(i.price * i.count)+'"' +
                    '                                           data-count="'+i.count+'" data-cartId="'+i.cartId+'" style="z-index: auto;">\n' +
                    '                                        <div class="item-form">\n' +
                    '                                            <div class="cell p-checkbox">\n' +
                    '                                                <div class="cart-checkbox">\n' +
                    '                                                    <input p-type="100001045662_1" type="checkbox" name="checkItem"\n' +
                    '                                                           value="100001045662_1" data-bind="cbid"\n' +
                    '                                                           class="jdcheckbox"\n' +
                    '                                                           clstag="clickcart|keycount|xincart|cart_checkOn_sku">\n' +
                    '                                                    <label for="" class="checked">勾选商品</label>\n' +
                    '                                                    <span class="line-circle"></span>\n' +
                    '                                                </div>\n' +
                    '                                            </div>\n' +
                    '                                            <div class="cell p-goods">\n' +
                    '                                                <div class="goods-item">\n' +
                    '                                                    <div class="p-img">\n' +
                    '                                                        <a href="/goods/' + i.productId + '" target="_blank"\n' +
                    '                                                           class="J_zyyhq_100001045662" good-similar="100001045662"><img\n' +
                    '                                                                class="img-responsive" alt="' + i.name + '"\n' +
                    '                                                                clstag="clickcart|keycount|xincart|cart_sku_pic"\n' +
                    '                                                                src="/static/images/product/' + i.picName + '"></a>\n' +
                    '                                                    </div>\n' +
                    '                                                    <div class="item-msg">\n' +
                    '                                                        <div class="p-name">\n' +
                    '                                                            <a clstag="clickcart|keycount|xincart|cart_sku_name"\n' +
                    '                                                               href="/goods/' + i.productId + '" target="_blank">\n' +
                    '                                                                ' + i.name + '\n' +
                    '                                                            </a>\n' +
                    '                                                        </div>\n' +
                    '                                                    </div>\n' +
                    '                                                </div>\n' +
                    '                                            </div>\n' +
                    '                                            <div class="cell p-props p-props-new">\n' +
                    '                                                <div class="props-txt" title="' + i.data.replace(/({|}|")/g, "") + '">' + i.data.replace(/({|}|")/g, "") +
                    '                                                </div>\n' +
                    '                                            </div>\n' +
                    '                                            <div class="cell p-price p-price-new ">\n' +
                    '                                                <p class="plus-switch">\n' +
                    '                                                    <strong>¥' + i.price + '</strong>\n' +
                    '                                                </p>\n' +
                    '                                                <div>\n' +
                    '                                                    <div class="clr"></div>\n' +
                    '                                                </div>\n' +
                    '                                                <p class="mt5" jj="">\n' +
                    '                                                </p>\n' +
                    '                                                <p class="mt5" bt=""></p>\n' +
                    '                                            </div>\n' +
                    '                                            <div class="cell p-quantity">\n' +
                    '                                                <!--单品-->\n' +
                    '                                                <div class="quantity-form">\n' +
                    '                                                    <a href="javascript:void(0);"\n' +
                    '                                                       clstag="clickcart|keycount|xincart|cart_num_down"\n' +
                    '                                                       class="decrement"\n' +
                    '                                                       >-</a>\n' +
                    '                                                    <input autocomplete="off" type="text" class="itxt" value="' + i.count + '"\n' +
                    '                                                           minnum="1">\n' +
                    '                                                    <a href="javascript:void(0);"\n' +
                    '                                                       clstag="clickcart|keycount|xincart|cart_num_up" class="increment"\n' +
                    '                                                       >+</a>\n' +
                    '                                                </div>\n' +
                    '                                            </div>\n' +
                    '                                            <div class="cell p-sum">\n' +
                    '                                                <strong>¥' + (i.price * i.count) + '</strong>\n' +
                    '                                            </div>\n' +
                    '                                            <div class="cell p-ops">\n' +
                    '                                                <!--单品-->\n' +
                    '                                                <a \n' +
                    '                                                   data-name=""\n' +
                    '                                                   data-more="" class="cart-remove"\n' +
                    '                                                   href="javascript:void(0);">删除</a>\n' +
                    '                                            </div>\n' +
                    '                                        </div>\n' +
                    '                                        <div class="item-line"></div>\n' +
                    '                                    </div>\n';
            }
            info += '                                </div>\n' +
                '                            </div>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '            </div>\n' +
                '            <div id="cart-floatbar">\n' +
                '                <div class="ui-ceilinglamp-1" style="width: 990px; height: 52px;">\n' +
                '                    <div class="cart-toolbar" style="width: 988px; height: 50px;">\n' +
                '                        <div class="toolbar-wrap">\n' +
                '                            <div class="selected-item-list hide" style="display: none;">\n' +
                '                            </div>\n' +
                '                            <div class="options-box">\n' +
                '                                <div class="select-all">\n' +
                '                                    <div class="cart-checkbox">\n' +
                '                                        <input type="checkbox" id="toggle-checkboxes_down" name="toggle-checkboxes"\n' +
                '                                               class="jdcheckbox" clstag="clickcart|keycount|xincart|cart_allCheckDown"\n' +
                '                                               >\n' +
                '                                        <label class="checked" for="">勾选全部商品</label>\n' +
                '                                    </div>\n' +
                '                                    全选\n' +
                '                                </div>\n' +
                '                                <div class="operation">\n' +
                '                                    <a href="#none" clstag="clickcart|keycount|xincart|cart_somesku_del"\n' +
                '                                       class="remove-batch">删除选中的商品</a>\n' +
                '                                    <a href="#none" class="follow-batch"\n' +
                '                                       clstag="clickcart|keycount|xincart|cart_somesku_guanzhu">移到我的关注</a>\n' +
                '                                    <a href="#none" class="cleaner-opt J_clr_all" title="亲，点我可快速清理购物车商品哦！">清理购物车</a>\n' +
                '                                </div>\n' +
                '                                <div class="clr"></div>\n' +
                '                                <div class="toolbar-right">\n' +
                '                                    <div class="normal">\n' +
                '                                        <div class="comm-right">\n' +
                '                                            <div class="btn-area">\n' +
                '                                                <a href="javascript:void(0);" id="settle-submit" onclick="return false;"\n' +
                '                                                   clstag="clickcart|keycount|xincart|cart_gotoOrder" class="submit-btn"\n' +
                '                                                   data-bind="1">\n' +
                '                                                    去结算<b></b></a>\n' +
                '                                            </div>\n' +
                '                                            <div class="price-sum">\n' +
                '                                                <div>\n' +
                '                                                    <span class="txt txt-new">总价：</span>\n' +
                '                                                    <span class="price sumPrice"><em>¥0</em></span>\n' +
                '                                                    <b class="ml5 price-tips"></b>\n' +
                '                                                    <div class="price-tipsbox" style="display: none; left: 159.85px;">\n' +
                '                                                        <div class="ui-tips-main">不含运费及送装服务费</div>\n' +
                '                                                        <span class="price-tipsbox-arrow"></span>\n' +
                '                                                    </div>\n' +
                '                                                    <br>\n' +
                '                                                </div>\n' +
                '                                            </div>\n' +
                '                                            <div class="amount-sum">\n' +
                '                                                已选择<em>0</em>件商品<b class="up"\n' +
                '                                                                   clstag="clickcart|keycount|xincart|cart_thumbnailOpen"></b>\n' +
                '                                            </div>\n' +
                '                                            <div class="clr"></div>\n' +
                '                                        </div>\n' +
                '                                    </div>\n' +
                '                                </div>\n' +
                '                            </div>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                </div>\n' +
                '            </div>\n' +
                '        </div>';

            $("#container").append(info);
            //全选按钮
            $('input[name=toggle-checkboxes]').change(
                function () {
                    //判断是否选中
                    if ($(this).prop("checked") == true) {
                        $('input[name=toggle-checkboxes]').attr("checked", "checked");
                        $("input[name=checkItem]").prop("checked", true);
                        $(".item-single").addClass("item-selected");
                        flushPrice()
                    }else{
                        $('input[name=toggle-checkboxes]').removeAttr("checked");
                        $("input[name=checkItem]").prop("checked", false);
                        $(".item-single").removeClass("item-selected");
                        flushPrice()
                    }
                }
            );
            //选中商品
            $("input[name=checkItem]").change(function () {
                flushPrice();
            });
            //数量减
            $(".decrement").click(function () {
                var count = $(this).next().val();
                if (count > 1) {
                    count--;
                    $(this).next().val(count);
                    $(this).parents().find("input[name=checkItem]").attr("checked", "checked");
                    $(this).parents(".item-single").attr("data-count", count);
                    var dataCount = parseInt($(this).parents(".item-single").attr("data-count"));
                    var price = parseInt($(this).parents(".item-single").attr("data-price"));
                    $(this).parents(".item-single").attr("data-sum", (dataCount * price));
                    var sum = $(this).parents(".item-single").attr("data-sum");
                    $(this).parents(".item-single").find(".p-sum strong").text("￥"+sum);
                    flushPrice()
                }
            });
            //数量加
            $(".increment").click(function () {
                var count = $(this).prev().val();
                if (count < 100) {
                    count++;
                    $(this).prev().val(count);
                    $(this).parents().find("input[name=checkItem]").attr("checked", "checked");
                    $(this).parents(".item-single").attr("data-count", count);
                    var dataCount = parseInt($(this).parents(".item-single").attr("data-count"));
                    var price = parseInt($(this).parents(".item-single").attr("data-price"));
                    $(this).parents(".item-single").attr("data-sum", (dataCount * price));
                    var sum = $(this).parents(".item-single").attr("data-sum");
                    $(this).parents(".item-single").find(".p-sum strong").text("￥"+sum);
                    flushPrice()
                }
            });
            //删除按钮
            $(".cart-remove").click(function () {
                var skuid = $(this).parents(".item-single").attr("data-skuId");
                var cartId = $(this).parents(".item-single").attr("data-cartId");
                $.get("/cart/delItem?cartId="+cartId+"&skuId="+skuid,function (data) {
                    window.location.reload();
                });
            });

            $("#settle-submit").click(function () {
                if ($("input[checked=checked]").length != 0) {
                    if ($("#isLogin").val() == '0') {
                        window.location.href = "/login/tologin";
                    }else{
                        var link = "/cart/tosettle?";
                        $('input[name=checkItem]').each(function (index) {
                            link+="cartIds="+$(this).parents(".item-single").attr("data-cartId")+"&";
                        });
                        window.location.href = link.substring(0, link.length - 1);
                    }
                }else{
                    alert("请至少选择一个商品")
                }
            });
        }
    });
});



function flushPrice() {
    var count = 0;
    var sum = 0;
    $("input[name=checkItem]").each(function (index) {
        if ($(this).prop("checked") == true) {
            count++;
            sum += parseInt($(this).parents(".item-single").attr("data-sum"));
        }
    });
    $(".amount-sum em").text(count);
    $(".sumPrice em").text(sum)
}