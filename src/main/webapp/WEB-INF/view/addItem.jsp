<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: Vince
  Date: 2019/1/21
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link rel="shortcut icon" href="/static/images/logo/cbnhj-dz1u8-002.ico" type="image/x-icon"/>

    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">

    <link rel="stylesheet" href="/static/css/iconfont.css">

    <link rel="stylesheet" href="/static/css/Head.css">

    <link rel="stylesheet" href="/static/css/Foot.css">

    <link rel="stylesheet" href="/static/css/addItem.css">

    <script src="/static/js/jquery-3.3.1.min.js"></script>


    <title>商品已成功添加至购物车</title>
</head>
<body>
<%@include file="master/Head.jsp" %>
<div class="main">
    <div class="success-wrap">
        <div class="w" id="result">
            <div class="m succeed-box">
                <div class="mc success-cont">
                    <div class="success-lcol">
                        <div class="success-top"><b class="succ-icon"></b>
                            <h3 class="ftx-02">商品已成功加入购物车！</h3></div>
                        <div class="p-item">
                            <div class="p-img">
                                <a href="/goods/${item.productId}" target="_blank">
                                    <img src="/static/images/product/${item.picName}" width="60px" height="60px">
                                </a>
                            </div>
                            <div class="p-info">
                                <div class="p-name">
                                    <a href="/goods/${item.productId}" target="_blank"
                                       title="">
                                        ${item.name}
                                    </a>
                                </div>
                                <div class="p-extra">
                                    <span class="txt" title="">${item.data}</span>
                                    <span class="txt">/  数量：${count}</span>
                                </div>
                            </div>
                            <div class="clr"></div>
                        </div>
                    </div>
                    <div class="success-btns success-btns-new">
                        <div class="success-ad"><a href="#none"></a></div>
                        <div class="clr"></div>
                        <div><a class="btn-tobback" href="/goods/${item.productId}" target="_blank"
                                clstag="pageclick|keycount|201601152|3">查看商品详情</a>
                            <a class="btn-addtocart" href=""
                               id="GotoShoppingCart" clstag="pageclick|keycount|201601152|4"><b></b>去购物车结算</a>
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
</html>