<%--
  Created by IntelliJ IDEA.
  User: Vince
  Date: 2019/1/22
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="/static/css/bootstrap.css">

    <link rel="shortcut icon" href="/static/images/logo/cbnhj-dz1u8-002.ico" type="image/x-icon"/>

    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">

    <link rel="stylesheet" href="/static/css/iconfont.css">

    <link rel="stylesheet" href="/static/css/Head.css">

    <link rel="stylesheet" href="/static/css/Foot.css">

    <link rel="stylesheet" href="/static/css/settle.css">

    <script src="/static/js/jquery-3.3.1.min.js"></script>

    <script src="/static/js/bootstrap.min.js"></script>

    <title>订单结算页</title>
</head>
<body>
<%
    double summary = 0;
    pageContext.setAttribute("summary", summary);
%>
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
        <a href="http://www.jd.com/" class="logo" target="_blank"></a>
        <a href="#none" class="link2"><b></b>"结算页"</a>
    </div>

    <div class="stepflex" id="#sflex03">
        <dl class="first done">
            <dt class="s-num">1</dt>
            <dd class="s-text">1.我的购物车<s></s><b></b></dd>
        </dl>
        <dl class="normal doing">
            <dt class="s-num">2</dt>
            <dd class="s-text">2.填写核对订单信息<s></s><b></b></dd>
        </dl>
        <dl class="normal last">
            <dt class="s-num">3</dt>
            <dd class="s-text">3.成功提交订单<s></s><b></b></dd>
        </dl>
    </div>
</div>
<div class="c">
    <div class="w">
        <div class="checkout-tit">
            <span class="tit-txt">填写并核对订单信息</span>
        </div>
        <div class="checkout-steps">
            <div class="step-tit">
                <h3>收货人信息</h3>
                <div class="extra-r">
                    <a href="#none">新增收货地址</a>
                </div>
            </div>
            <div class="step-cont">
                <div class="addr" style="max-height: 40px;overflow: hidden;">
                    <ul class="addr-list">

                    </ul>
                </div>
                <div class="more-addr">
                    <span>更多地址</span>
                </div>
            </div>
            <div class="hr"></div>
            <div class="shipAndSkuInfo">
                <div class="payShipAndSkuInfo">
                    <div class="step-tit">
                        <h3>支付方式</h3>
                    </div>
                    <div class="step-cont">
                        <div class="payment-list">
                            <div class="list-cont">
                                <ul id="payment-list">
                                    <li style="cursor: pointer;">
                                        <div class="payment-item item-selected online-payment">
                                            <b></b>
                                            在线支付
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="hr"></div>
                    <div class="step-tit">
                        <h3>送货清单</h3>
                    </div>
                    <div class="step-cont">
                        <div class="goods-list">
                            <div class="goods-items">
                                <c:forEach items="${cartItems}" var="item" varStatus="status">
                                    <c:set var="summary" value="${summary+item.price}"/>
                                    <div class="goods-item" data-skuId="${item.skuId}">
                                        <div class="p-img">
                                            <a href="" target="_blank">
                                                <img src="/static/images/product/${item.picName}"
                                                     alt="">
                                            </a>
                                        </div>
                                        <div class="goods-msg">
                                            <div class="goods-msg-gel">
                                                <div class="p-name">
                                                    <a href="#none" target="_blank">
                                                        ${item.name}
                                                    </a>
                                                </div>
                                                <div class="p-price ">
                                                    <strong class="jd-price">￥ ${item.price}
                                                    </strong>
                                                    <span class="p-num">x${item.count}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="order-summary">
            <div class="statistic fr">
                <div class="list">
                    <span>
                        <em class="ftx-01">${cartItems.size()}</em>
                        件商品，总商品金额
                    </span>
                    ￥<em class="price">${summary}</em>
                </div>
            </div>
        </div>
        <div class="trade-foot">
            <div class="trade-foot-detail-com">
                <div class="fc-price-info">
                    <span class="price-tit">应付总额：</span>
                    <span class="price-num" id="sumPayPriceId">￥${summary}</span>
                </div>
            </div>
        </div>
        <div class="submit-order">
            <button class="checkout-submit btn btn-danger">提交订单</button>
        </div>
    </div>
</div>
<%@include file="master/Foot.jsp" %>
</body>
<script src="/static/js/settle.js"></script>
</html>
