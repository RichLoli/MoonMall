<%--
  Created by IntelliJ IDEA.
  User: Vince
  Date: 2019/1/19
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <link rel="stylesheet" href="/static/css/goods.css">

    <script src="/static/js/jquery-3.3.1.min.js"></script>

    <script src="/static/js/bootstrap.min.js"></script>

    <title>Title</title>

    <script>
        var productId = ${id};
    </script>
</head>
<body>
<%@include file="master/Head.jsp" %>
<div class="body">
    <div class="w">
        <div class="product-intro">
            <div class="preview-wrap">
                <div class="preview">
                    <div class="jqzoom main-img">

                    </div>
                    <div class="spec-list">
                        <div class="spec-items" style="position: relative; width: 380px; height: 58px; overflow: hidden;">
                            <ul id="img-list" style="position: absolute; width: 456px; height: 58px; top: 0px; left: 0px;">

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="iteminfo-wrap">
                <div id="sku-name" class="sku-name">

                </div>
                <div class="summary">
                    <div class="summary-price-wrap">
                        <div class="summary-price J-summary-price">
                            <div class="dt">
                                M M 价
                            </div>
                            <div class="dd">
                                <span class="p-price">
                                    <span>￥</span>
                                    <span id="price" class="price"></span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="summary">
                    <div class="li">
                        <div class="dt">重 量</div>
                        <div id="weight" class="dd">0.435kg</div>
                    </div>
                    <div id="choose-attrs">

                    </div>
                </div>
                <div class="choose-btns">
                    <div class="choose-amount">
                        <div class="wrap-input">
                            <input class="text buy-num" type="text" id="buy-num" value="1">
                            <a class="btn-reduce" href="#none">-</a>
                            <a class="btn-add" href="#none">+</a>
                        </div>
                    </div>
                    <div class="addItem">
                        <a href="" id="InitCartUrl" class="btn btn-danger">加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="w" style="overflow: hidden">
            <div class="aside">
                <div class="mt">
                    <div>
                        <h4 id="shop-name" class="text-center">木猫自营店</h4>
                    </div>
                </div>
                <div class="mc">
                        <div class="btn btn-default enter-shop">
                            进店逛逛
                        </div>
                        <div class="btn btn-default follow-shop">
                            关注店铺
                        </div>
                </div>
            </div>
            <div class="detail">
                <div>
                    <div class="tab large">
                        <ul>
                            <li>商品介绍</li>
                            <li>商品评价</li>
                        </ul>
                        <div class="extra">
                            <div class="add">
                                <a href="" style="display: block;color: #fff" class="text-center">加入购物车</a>
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
<script src="/static/js/Head.js"></script>
<script src="/static/js/public.js"></script>
<script src="/static/js/goods.js"></script>
</html>
