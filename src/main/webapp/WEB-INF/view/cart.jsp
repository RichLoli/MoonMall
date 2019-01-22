<%--
  Created by IntelliJ IDEA.
  User: Vince
  Date: 2019/1/22
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="/static/css/bootstrap.css">

    <link rel="shortcut icon" href="/static/images/logo/cbnhj-dz1u8-002.ico" type="image/x-icon"/>

    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">

    <link rel="stylesheet" href="/static/css/iconfont.css">

    <link rel="stylesheet" href="/static/css/Head.css">

    <link rel="stylesheet" href="/static/css/Foot.css">

    <link rel="stylesheet" href="/static/css/cart.css">

    <script src="/static/js/jquery-3.3.1.min.js"></script>

    <script src="/static/js/bootstrap.min.js"></script>

    <title>我的购物车 - MM商城</title>
</head>
<body>
<div id="shortcut">
    <div class="w">
        <ul class="fr">
            <li id="ttbar-login">
                <a href="/login/tologin" class="link-login">您好，请登录</a>
                &nbsp;&nbsp;
                <a href="/login/toreg" class="link-register">免费注册</a>
            </li>
            <li>
                <div class="dt"><a href="#">我的订单</a></div>
            </li>
            <li>
                <div class="dt"><a href="#">我的MMall</a></div>
            </li>
            <li>
                <div class="dt"><a href="#">MMall会员</a></div>
            </li>
            <li>
                <div class="dt"><a href="#">客户服务</a></div>
            </li>
            <li>
                <div class="dt"><a href="#">网站导航</a></div>
            </li>
        </ul>
    </div>
</div>
<div class="w w1 header clearfix">
    <div id="logo-2014">
        <a href="/index.jsp" class="logo"></a>
        <a href="#none" class="link2"><b></b>购物车</a>
    </div>
    <div class="cart-search">
        <div class="forms">
            <input id="key" type="text" class="itxt" autocomplete="off" accesskey="s"
                   style="color: rgb(153, 153, 153);">
            <input type="button" class="button search-button" value="搜索" onclick="javascript:void(0);">
        </div>
    </div>
</div>
<div id="container" class="cart" ecarddg="0" cartalwaysdg="0" t="0">
    <div class="w">
        <div id="chunjie" class="mb10"></div>
        <div class="nologin-tip">
            <span class="wicon"></span>
            您还没有登录！登录后购物车的商品将保存到您账号中
            <a class="btn-1 ml10" href="#none" clstag="clickcart|keycount|xincart|cart_pageTopLogin">立即登录</a>
        </div>
        <div class="cart-filter-bar">
            <ul class="switch-cart">
                <li class="switch-cart-item curr">
                    <a href="#">
                        <em>全部商品</em>
                        <span class="number">12</span>
                    </a>
                </li>
            </ul>
            <div class="clr"></div>
            <div class="w-line">
                <div class="floater" style="width: 89px; left: 0px;"></div>
            </div>
            <div class="tab-con ui-switchable-panel-selected" style="display: block;"></div>
            <div class="tab-con hide" style="display: none;"></div>
        </div>
        <input type="hidden" id="isLogin" value="0">
        <input id="hidebx" type="hidden" value="0">
        <div class="cart-empty" style="display: none">
            <div class="message">
                <ul>
                    <li class="txt">
                        购物车内暂时没有商品，登录后将显示您之前加入的商品
                    </li>
                    <li>
                        <a href="#none" class="btn-1 login-btn mr10">登录</a>
                        <a href="//www.jd.com/" class="ftx-05">
                            去购物&gt;
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="cart-warp">
        <div class="w">
            <div id="jd-cart">
                <div class="cart-main cart-main-new">
                    <div class="cart-thead">
                        <div class="column t-checkbox">
                            <div class="cart-checkbox">
                                <input type="checkbox" id="toggle-checkboxes_up" name="toggle-checkboxes"
                                       class="jdcheckbox" clstag="clickcart|keycount|xincart|cart_allCheck"
                                       checked="checked">
                                <label class="checked" for="">勾选全部商品</label>
                            </div>
                            全选
                        </div>
                        <div class="column t-goods">商品</div>
                        <div class="column t-props"></div>
                        <div class="column t-price">单价</div>
                        <div class="column t-quantity">数量</div>
                        <div class="column t-sum">小计</div>
                        <div class="column t-action">操作</div>
                    </div>
                    <div id="cart-list">
                        <div class="cart-item-list" id="cart-item-list-01">
                            <div class="cart-tbody">
                                <div class="item-list" style="z-index: auto;">
                                    <div class="item-single  item-item  item-selected " product="1" select="1" calop="1"
                                         id="product_100001045662" num="1" skuid="100001045662" venderid="8888"
                                         zy="true" flashpurchase="false" oversea="false" sid="671" cid="672" cm=""
                                         ts="1548127137682" cancelplus="false" dt="10" style="z-index: auto;">
                                        <div class="item-form">
                                            <div class="cell p-checkbox">
                                                <div class="cart-checkbox">
                                                    <!--单品-->
                                                    <input p-type="100001045662_1" type="checkbox" name="checkItem"
                                                           value="100001045662_1" checked="checked" data-bind="cbid"
                                                           class="jdcheckbox"
                                                           clstag="clickcart|keycount|xincart|cart_checkOn_sku">
                                                    <label for="" class="checked">勾选商品</label>
                                                    <span class="line-circle"></span>
                                                </div>
                                            </div>
                                            <div class="cell p-goods">
                                                <div class="goods-item">
                                                    <div class="p-img">
                                                        <a href="//item.jd.com/100001045662.html" target="_blank"
                                                           class="J_zyyhq_100001045662" good-similar="100001045662"><img
                                                                alt="联想(Lenovo)小新Air13.3英寸超轻薄笔记本电脑(i7-8565U 8G 256G SSD PCIe MX150 高色域 正版Office)轻奢灰"
                                                                clstag="clickcart|keycount|xincart|cart_sku_pic"
                                                                src="//img10.360buyimg.com/cms/s80x80_jfs/t27331/318/1760098457/252699/aefdb4e/5bebd448N82923baf.jpg"></a>
                                                    </div>
                                                    <div class="item-msg">
                                                        <div class="p-name">
                                                            <a clstag="clickcart|keycount|xincart|cart_sku_name"
                                                               href="//item.jd.com/100001045662.html" target="_blank">
                                                                联想(Lenovo)小新Air13.3英寸超轻薄笔记本电脑(i7-8565U 8G 256G SSD PCIe
                                                                MX150 高色域 正版Office)轻奢灰
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cell p-props p-props-new">
                                                <div class="props-txt" title="Air13【i7 8G 256G】轻奢灰">颜色：Air13【i7 8G
                                                    256G】轻奢灰
                                                </div>
                                            </div>
                                            <div class="cell p-price p-price-new ">
                                                <p class="plus-switch">
                                                    <strong>¥5599.00</strong>
                                                </p>
                                                <div>
                                                    <div class="clr"></div>
                                                </div>
                                                <p class="mt5" jj="">
                                                </p>
                                                <p class="mt5" bt=""></p>
                                            </div>
                                            <div class="cell p-quantity">
                                                <!--单品-->
                                                <div class="quantity-form">
                                                    <a href="javascript:void(0);"
                                                       clstag="clickcart|keycount|xincart|cart_num_down"
                                                       class="decrement disabled"
                                                       id="decrement_8888_100001045662_1_1">-</a>
                                                    <input autocomplete="off" type="text" class="itxt" value="1"
                                                           id="changeQuantity_8888_100001045662_1_1_0" minnum="1">
                                                    <a href="javascript:void(0);"
                                                       clstag="clickcart|keycount|xincart|cart_num_up" class="increment"
                                                       id="increment_8888_100001045662_1_1_0">+</a>
                                                </div>
                                            </div>
                                            <div class="cell p-sum">
                                                <strong>¥5599.00</strong>
                                                <span class="weight" id="weight_100001045662" data="2.035" fresh=""
                                                      skuid="100001045662" num="1" afterprice="5599.00"
                                                      category="670;671;672">2.035kg</span>
                                            </div>
                                            <div class="cell p-ops">
                                                <!--单品-->
                                                <a id="remove_8888_100001045662_1"
                                                   data-name=""
                                                   data-more="" class="cart-remove"
                                                   href="javascript:void(0);">删除</a>
                                            </div>
                                        </div>
                                        <div class="item-line"></div>
                                    </div>
                                    <div class="item-single  item-item  item-selected " product="1" select="1" calop="1"
                                         id="product_100001045662" num="1" skuid="100001045662" venderid="8888"
                                         zy="true" flashpurchase="false" oversea="false" sid="671" cid="672" cm=""
                                         ts="1548127137682" cancelplus="false" dt="10" style="z-index: auto;">
                                        <div class="item-form">
                                            <div class="cell p-checkbox">
                                                <div class="cart-checkbox">
                                                    <!--单品-->
                                                    <input p-type="100001045662_1" type="checkbox" name="checkItem"
                                                           value="100001045662_1" checked="checked" data-bind="cbid"
                                                           class="jdcheckbox"
                                                           clstag="clickcart|keycount|xincart|cart_checkOn_sku">
                                                    <label for="" class="checked">勾选商品</label>
                                                    <span class="line-circle"></span>
                                                </div>
                                            </div>
                                            <div class="cell p-goods">
                                                <div class="goods-item">
                                                    <div class="p-img">
                                                        <a href="//item.jd.com/100001045662.html" target="_blank"
                                                           class="J_zyyhq_100001045662" good-similar="100001045662"><img
                                                                alt="联想(Lenovo)小新Air13.3英寸超轻薄笔记本电脑(i7-8565U 8G 256G SSD PCIe MX150 高色域 正版Office)轻奢灰"
                                                                clstag="clickcart|keycount|xincart|cart_sku_pic"
                                                                src="//img10.360buyimg.com/cms/s80x80_jfs/t27331/318/1760098457/252699/aefdb4e/5bebd448N82923baf.jpg"></a>
                                                    </div>
                                                    <div class="item-msg">
                                                        <div class="p-name">
                                                            <a clstag="clickcart|keycount|xincart|cart_sku_name"
                                                               href="//item.jd.com/100001045662.html" target="_blank">
                                                                联想(Lenovo)小新Air13.3英寸超轻薄笔记本电脑(i7-8565U 8G 256G SSD PCIe
                                                                MX150 高色域 正版Office)轻奢灰
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cell p-props p-props-new">
                                                <div class="props-txt" title="Air13【i7 8G 256G】轻奢灰">颜色：Air13【i7 8G
                                                    256G】轻奢灰
                                                </div>
                                            </div>
                                            <div class="cell p-price p-price-new ">
                                                <p class="plus-switch">
                                                    <strong>¥5599.00</strong>
                                                </p>
                                                <div>
                                                    <div class="clr"></div>
                                                </div>
                                                <p class="mt5" jj="">
                                                </p>
                                                <p class="mt5" bt=""></p>
                                            </div>
                                            <div class="cell p-quantity">
                                                <!--单品-->
                                                <div class="quantity-form">
                                                    <a href="javascript:void(0);"
                                                       clstag="clickcart|keycount|xincart|cart_num_down"
                                                       class="decrement disabled"
                                                       id="decrement_8888_100001045662_1_1">-</a>
                                                    <input autocomplete="off" type="text" class="itxt" value="1"
                                                           id="changeQuantity_8888_100001045662_1_1_0" minnum="1">
                                                    <a href="javascript:void(0);"
                                                       clstag="clickcart|keycount|xincart|cart_num_up" class="increment"
                                                       id="increment_8888_100001045662_1_1_0">+</a>
                                                </div>
                                            </div>
                                            <div class="cell p-sum">
                                                <strong>¥5599.00</strong>
                                                <span class="weight" id="weight_100001045662" data="2.035" fresh=""
                                                      skuid="100001045662" num="1" afterprice="5599.00"
                                                      category="670;671;672">2.035kg</span>
                                            </div>
                                            <div class="cell p-ops">
                                                <!--单品-->
                                                <a id="remove_8888_100001045662_1"
                                                   data-name=""
                                                   data-more="" class="cart-remove"
                                                   href="javascript:void(0);">删除</a>
                                            </div>
                                        </div>
                                        <div class="item-line"></div>
                                    </div>
                                    <div class="item-single  item-item  item-selected " product="1" select="1" calop="1"
                                         id="product_100001045662" num="1" skuid="100001045662" venderid="8888"
                                         zy="true" flashpurchase="false" oversea="false" sid="671" cid="672" cm=""
                                         ts="1548127137682" cancelplus="false" dt="10" style="z-index: auto;">
                                        <div class="item-form">
                                            <div class="cell p-checkbox">
                                                <div class="cart-checkbox">
                                                    <!--单品-->
                                                    <input p-type="100001045662_1" type="checkbox" name="checkItem"
                                                           value="100001045662_1" checked="checked" data-bind="cbid"
                                                           class="jdcheckbox"
                                                           clstag="clickcart|keycount|xincart|cart_checkOn_sku">
                                                    <label for="" class="checked">勾选商品</label>
                                                    <span class="line-circle"></span>
                                                </div>
                                            </div>
                                            <div class="cell p-goods">
                                                <div class="goods-item">
                                                    <div class="p-img">
                                                        <a href="//item.jd.com/100001045662.html" target="_blank"
                                                           class="J_zyyhq_100001045662" good-similar="100001045662"><img
                                                                alt="联想(Lenovo)小新Air13.3英寸超轻薄笔记本电脑(i7-8565U 8G 256G SSD PCIe MX150 高色域 正版Office)轻奢灰"
                                                                clstag="clickcart|keycount|xincart|cart_sku_pic"
                                                                src="//img10.360buyimg.com/cms/s80x80_jfs/t27331/318/1760098457/252699/aefdb4e/5bebd448N82923baf.jpg"></a>
                                                    </div>
                                                    <div class="item-msg">
                                                        <div class="p-name">
                                                            <a clstag="clickcart|keycount|xincart|cart_sku_name"
                                                               href="//item.jd.com/100001045662.html" target="_blank">
                                                                联想(Lenovo)小新Air13.3英寸超轻薄笔记本电脑(i7-8565U 8G 256G SSD PCIe
                                                                MX150 高色域 正版Office)轻奢灰
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cell p-props p-props-new">
                                                <div class="props-txt" title="Air13【i7 8G 256G】轻奢灰">颜色：Air13【i7 8G
                                                    256G】轻奢灰
                                                </div>
                                            </div>
                                            <div class="cell p-price p-price-new ">
                                                <p class="plus-switch">
                                                    <strong>¥5599.00</strong>
                                                </p>
                                                <div>
                                                    <div class="clr"></div>
                                                </div>
                                                <p class="mt5" jj="">
                                                </p>
                                                <p class="mt5" bt=""></p>
                                            </div>
                                            <div class="cell p-quantity">
                                                <!--单品-->
                                                <div class="quantity-form">
                                                    <a href="javascript:void(0);"
                                                       clstag="clickcart|keycount|xincart|cart_num_down"
                                                       class="decrement disabled"
                                                       id="decrement_8888_100001045662_1_1">-</a>
                                                    <input autocomplete="off" type="text" class="itxt" value="1"
                                                           id="changeQuantity_8888_100001045662_1_1_0" minnum="1">
                                                    <a href="javascript:void(0);"
                                                       clstag="clickcart|keycount|xincart|cart_num_up" class="increment"
                                                       id="increment_8888_100001045662_1_1_0">+</a>
                                                </div>
                                            </div>
                                            <div class="cell p-sum">
                                                <strong>¥5599.00</strong>
                                                <span class="weight" id="weight_100001045662" data="2.035" fresh=""
                                                      skuid="100001045662" num="1" afterprice="5599.00"
                                                      category="670;671;672">2.035kg</span>
                                            </div>
                                            <div class="cell p-ops">
                                                <!--单品-->
                                                <a id="remove_8888_100001045662_1"
                                                   data-name=""
                                                   data-more="" class="cart-remove"
                                                   href="javascript:void(0);">删除</a>
                                            </div>
                                        </div>
                                        <div class="item-line"></div>
                                    </div>
                                    <div class="item-single  item-item  item-selected " product="1" select="1" calop="1"
                                         id="product_100001045662" num="1" skuid="100001045662" venderid="8888"
                                         zy="true" flashpurchase="false" oversea="false" sid="671" cid="672" cm=""
                                         ts="1548127137682" cancelplus="false" dt="10" style="z-index: auto;">
                                        <div class="item-form">
                                            <div class="cell p-checkbox">
                                                <div class="cart-checkbox">
                                                    <!--单品-->
                                                    <input p-type="100001045662_1" type="checkbox" name="checkItem"
                                                           value="100001045662_1" checked="checked" data-bind="cbid"
                                                           class="jdcheckbox"
                                                           clstag="clickcart|keycount|xincart|cart_checkOn_sku">
                                                    <label for="" class="checked">勾选商品</label>
                                                    <span class="line-circle"></span>
                                                </div>
                                            </div>
                                            <div class="cell p-goods">
                                                <div class="goods-item">
                                                    <div class="p-img">
                                                        <a href="//item.jd.com/100001045662.html" target="_blank"
                                                           class="J_zyyhq_100001045662" good-similar="100001045662"><img
                                                                alt="联想(Lenovo)小新Air13.3英寸超轻薄笔记本电脑(i7-8565U 8G 256G SSD PCIe MX150 高色域 正版Office)轻奢灰"
                                                                clstag="clickcart|keycount|xincart|cart_sku_pic"
                                                                src="//img10.360buyimg.com/cms/s80x80_jfs/t27331/318/1760098457/252699/aefdb4e/5bebd448N82923baf.jpg"></a>
                                                    </div>
                                                    <div class="item-msg">
                                                        <div class="p-name">
                                                            <a clstag="clickcart|keycount|xincart|cart_sku_name"
                                                               href="//item.jd.com/100001045662.html" target="_blank">
                                                                联想(Lenovo)小新Air13.3英寸超轻薄笔记本电脑(i7-8565U 8G 256G SSD PCIe
                                                                MX150 高色域 正版Office)轻奢灰
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cell p-props p-props-new">
                                                <div class="props-txt" title="Air13【i7 8G 256G】轻奢灰">颜色：Air13【i7 8G
                                                    256G】轻奢灰
                                                </div>
                                            </div>
                                            <div class="cell p-price p-price-new ">
                                                <p class="plus-switch">
                                                    <strong>¥5599.00</strong>
                                                </p>
                                                <div>
                                                    <div class="clr"></div>
                                                </div>
                                                <p class="mt5" jj="">
                                                </p>
                                                <p class="mt5" bt=""></p>
                                            </div>
                                            <div class="cell p-quantity">
                                                <!--单品-->
                                                <div class="quantity-form">
                                                    <a href="javascript:void(0);"
                                                       clstag="clickcart|keycount|xincart|cart_num_down"
                                                       class="decrement disabled"
                                                       id="decrement_8888_100001045662_1_1">-</a>
                                                    <input autocomplete="off" type="text" class="itxt" value="1"
                                                           id="changeQuantity_8888_100001045662_1_1_0" minnum="1">
                                                    <a href="javascript:void(0);"
                                                       clstag="clickcart|keycount|xincart|cart_num_up" class="increment"
                                                       id="increment_8888_100001045662_1_1_0">+</a>
                                                </div>
                                            </div>
                                            <div class="cell p-sum">
                                                <strong>¥5599.00</strong>
                                                <span class="weight" id="weight_100001045662" data="2.035" fresh=""
                                                      skuid="100001045662" num="1" afterprice="5599.00"
                                                      category="670;671;672">2.035kg</span>
                                            </div>
                                            <div class="cell p-ops">
                                                <!--单品-->
                                                <a id="remove_8888_100001045662_1"
                                                   data-name=""
                                                   data-more="" class="cart-remove"
                                                   href="javascript:void(0);">删除</a>
                                            </div>
                                        </div>
                                        <div class="item-line"></div>
                                    </div>
                                    <div class="item-single  item-item  item-selected " product="1" select="1" calop="1"
                                         id="product_100001045662" num="1" skuid="100001045662" venderid="8888"
                                         zy="true" flashpurchase="false" oversea="false" sid="671" cid="672" cm=""
                                         ts="1548127137682" cancelplus="false" dt="10" style="z-index: auto;">
                                        <div class="item-form">
                                            <div class="cell p-checkbox">
                                                <div class="cart-checkbox">
                                                    <!--单品-->
                                                    <input p-type="100001045662_1" type="checkbox" name="checkItem"
                                                           value="100001045662_1" checked="checked" data-bind="cbid"
                                                           class="jdcheckbox"
                                                           clstag="clickcart|keycount|xincart|cart_checkOn_sku">
                                                    <label for="" class="checked">勾选商品</label>
                                                    <span class="line-circle"></span>
                                                </div>
                                            </div>
                                            <div class="cell p-goods">
                                                <div class="goods-item">
                                                    <div class="p-img">
                                                        <a href="//item.jd.com/100001045662.html" target="_blank"
                                                           class="J_zyyhq_100001045662" good-similar="100001045662"><img
                                                                alt="联想(Lenovo)小新Air13.3英寸超轻薄笔记本电脑(i7-8565U 8G 256G SSD PCIe MX150 高色域 正版Office)轻奢灰"
                                                                clstag="clickcart|keycount|xincart|cart_sku_pic"
                                                                src="//img10.360buyimg.com/cms/s80x80_jfs/t27331/318/1760098457/252699/aefdb4e/5bebd448N82923baf.jpg"></a>
                                                    </div>
                                                    <div class="item-msg">
                                                        <div class="p-name">
                                                            <a clstag="clickcart|keycount|xincart|cart_sku_name"
                                                               href="//item.jd.com/100001045662.html" target="_blank">
                                                                联想(Lenovo)小新Air13.3英寸超轻薄笔记本电脑(i7-8565U 8G 256G SSD PCIe
                                                                MX150 高色域 正版Office)轻奢灰
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cell p-props p-props-new">
                                                <div class="props-txt" title="Air13【i7 8G 256G】轻奢灰">颜色：Air13【i7 8G
                                                    256G】轻奢灰
                                                </div>
                                            </div>
                                            <div class="cell p-price p-price-new ">
                                                <p class="plus-switch">
                                                    <strong>¥5599.00</strong>
                                                </p>
                                                <div>
                                                    <div class="clr"></div>
                                                </div>
                                                <p class="mt5" jj="">
                                                </p>
                                                <p class="mt5" bt=""></p>
                                            </div>
                                            <div class="cell p-quantity">
                                                <!--单品-->
                                                <div class="quantity-form">
                                                    <a href="javascript:void(0);"
                                                       clstag="clickcart|keycount|xincart|cart_num_down"
                                                       class="decrement disabled"
                                                       id="decrement_8888_100001045662_1_1">-</a>
                                                    <input autocomplete="off" type="text" class="itxt" value="1"
                                                           id="changeQuantity_8888_100001045662_1_1_0" minnum="1">
                                                    <a href="javascript:void(0);"
                                                       clstag="clickcart|keycount|xincart|cart_num_up" class="increment"
                                                       id="increment_8888_100001045662_1_1_0">+</a>
                                                </div>
                                            </div>
                                            <div class="cell p-sum">
                                                <strong>¥5599.00</strong>
                                                <span class="weight" id="weight_100001045662" data="2.035" fresh=""
                                                      skuid="100001045662" num="1" afterprice="5599.00"
                                                      category="670;671;672">2.035kg</span>
                                            </div>
                                            <div class="cell p-ops">
                                                <!--单品-->
                                                <a id="remove_8888_100001045662_1"
                                                   data-name=""
                                                   data-more="" class="cart-remove"
                                                   href="javascript:void(0);">删除</a>
                                            </div>
                                        </div>
                                        <div class="item-line"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="cart-floatbar">
                <div class="ui-ceilinglamp-1" style="width: 990px; height: 52px;">
                    <div class="cart-toolbar" style="width: 988px; height: 50px;">
                        <div class="toolbar-wrap">
                            <div class="selected-item-list hide" style="display: none;">
                            </div>
                            <div class="options-box">
                                <div class="select-all">
                                    <div class="cart-checkbox">
                                        <input type="checkbox" id="toggle-checkboxes_down" name="toggle-checkboxes"
                                               class="jdcheckbox" clstag="clickcart|keycount|xincart|cart_allCheckDown"
                                               checked="checked">
                                        <label class="checked" for="">勾选全部商品</label>
                                    </div>
                                    全选
                                </div>
                                <div class="operation">
                                    <a href="#none" clstag="clickcart|keycount|xincart|cart_somesku_del"
                                       class="remove-batch">删除选中的商品</a>
                                    <a href="#none" class="follow-batch"
                                       clstag="clickcart|keycount|xincart|cart_somesku_guanzhu">移到我的关注</a>
                                    <a href="#none" class="cleaner-opt J_clr_all" title="亲，点我可快速清理购物车商品哦！">清理购物车</a>
                                </div>
                                <div class="clr"></div>
                                <div class="toolbar-right">
                                    <div class="normal">
                                        <div class="comm-right">
                                            <div class="btn-area">
                                                <a href="javascript:void(0);" onclick="return false;"
                                                   clstag="clickcart|keycount|xincart|cart_gotoOrder" class="submit-btn"
                                                   data-bind="1">
                                                    去结算<b></b></a>
                                            </div>
                                            <div class="price-sum">
                                                <div>
                                                    <span class="txt txt-new">总价：</span>
                                                    <span class="price sumPrice"><em>¥30138.80</em></span>
                                                    <b class="ml5 price-tips"></b>
                                                    <div class="price-tipsbox" style="display: none; left: 159.85px;">
                                                        <div class="ui-tips-main">不含运费及送装服务费</div>
                                                        <span class="price-tipsbox-arrow"></span>
                                                    </div>
                                                    <br>
                                                </div>
                                            </div>
                                            <div class="amount-sum">
                                                已选择<em>9</em>件商品<b class="up"
                                                                   clstag="clickcart|keycount|xincart|cart_thumbnailOpen"></b>
                                            </div>
                                            <div class="clr"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="master/Foot.jsp" %>
</body>
<script src="/static/js/public.js"></script>
<script src="/static/js/cart.js"></script>
</html>
