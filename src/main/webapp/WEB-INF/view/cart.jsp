<%@ page import="cn.lumoon.moonmall.model.User" %><%--
  Created by IntelliJ IDEA.
  User: Vince
  Date: 2019/1/22
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    pageContext.setAttribute("user", request.getSession().getAttribute("user"));
%>
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
        <div id="chunjie" class="mb10">

        </div>
        <div class="cart-filter-bar">
            <div class="tab-con ui-switchable-panel-selected" style="display: block;"></div>
            <div class="tab-con hide" style="display: none;"></div>
        </div>
        <c:if test="${user == null}">
            <input type="hidden" id="isLogin" value="0">
        </c:if>
        <input id="hidebx" type="hidden" value="0">
    </div>
</div>
<%@include file="master/Foot.jsp" %>
</body>
<script src="/static/js/public.js"></script>
<script src="/static/js/cart.js"></script>
</html>
