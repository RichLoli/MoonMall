<%--
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
                            <div class="p-img"><a href="//item.jd.com/7629588.html" target="_blank"><img
                                    src="//img10.360buyimg.com/cms/s60x60_jfs/t1/15445/5/2946/178160/5c2325f9Ee9236ae9/6c2a5e9f2d14489a.jpg"
                                    clstag="pageclick|keycount|201601152|11"></a></div>
                            <div class="p-info">
                                <div class="p-name"><a href="//item.jd.com/7629588.html" target="_blank"
                                                       clstag="pageclick|keycount|201601152|2"
                                                       title="Apple MacBook Pro 13.3英寸笔记本电脑 深空灰色 2018新款（四核八代i5 8G 256G固态硬盘 MR9Q2CH/A）">Apple
                                    MacBook Pro 13.3英寸笔记本电脑 深空灰色 2018新款（四核八代i5 8G 256G固态硬盘 MR9Q2CH/A）</a></div>
                                <div class="p-extra"><span class="txt" title="四核八代 i5 8G 256G 13.3英寸灰">颜色：四核八代 i5 8G 256G 13.3英寸灰</span><span
                                        class="txt">/  数量：1</span></div>
                            </div>
                            <div class="clr"></div>
                        </div>
                    </div>
                    <div class="success-btns success-btns-new">
                        <div class="success-ad"><a href="#none"></a></div>
                        <div class="clr"></div>
                        <div><a class="btn-tobback" href="//item.jd.com/7629588.html" target="_blank"
                                clstag="pageclick|keycount|201601152|3">查看商品详情</a><a class="btn-addtocart"
                                                                                     href="//cart.jd.com/cart.action?r=0.34885132812479"
                                                                                     id="GotoShoppingCart"
                                                                                     clstag="pageclick|keycount|201601152|4"><b></b>去购物车结算</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="master/Foot.jsp" %>
</body>
</html>