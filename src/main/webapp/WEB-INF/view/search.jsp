<%--
  Created by IntelliJ IDEA.
  User: Vince
  Date: 2019/1/17
  Time: 9:12
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

    <link rel="stylesheet" href="/static/css/search.css">

    <script src="/static/js/jquery-3.3.1.min.js"></script>

    <script src="/static/js/bootstrap.min.js"></script>
    <title>${keyword} - 商品搜索 - MoonMall</title>
</head>
<body>
<%@include file="master/Head.jsp" %>
<div class="section w">
    <div class="m-list">
        <div class="goods-list">
            <c:choose>
                <c:when test="${items.size() != 0}">
                    <ul class="gl-warp">
                        <c:forEach items="${items}" var="item" step="4" varStatus="vs">
                            <div class="row">
                                <c:forEach items="${items}" var="it" begin="${vs.index}" end="${vs.index+3}">
                                    <li class="col-lg-3 gl-item">
                                        <div class="gl-i-warp">
                                            <div class="p-img">
                                                <a href="/goods/${it.id}" target="_blank">
                                                    <img src="${it.pictureUrl}"
                                                         class="img-responsive" alt="">
                                                </a>
                                            </div>
                                            <div class="p-price">
                                                <strong>
                                                    <em>￥</em>
                                                    <i>${it.price}</i>
                                                </strong>
                                            </div>
                                            <div class="p-name">
                                                <a href="/goods/${it.id}" target="_blank">
                                                        ${it.name}
                                                </a>
                                            </div>
                                            <div class="p-shop">
                                <span>
                                    <a href="" title="${it.storeName}">${it.storeName}</a>
                                </span>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </div>
                        </c:forEach>
                    </ul>
                    <div class="center-block page-contro">
                        <div class="pre-button">
                            <button id="pre-button" class="btn btn-default"><i class="iconfont icon-iconfontzhizuobiaozhun023126"></i>上一页
                            </button>
                        </div>
                        <div class="page-count">
                            <c:forEach begin="1" end="${count}" varStatus="c">
                                <c:choose>
                                    <c:when test="${c.index == page}">
                                        <div class="count-item btn btn-default btn-primary">${c.index}</div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="count-item btn btn-default">${c.index}</div>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </div>
                        <div class="next-button">
                            <button id="next-button" class="btn btn-default">下一页<i
                                    class="iconfont icon-iconfontzhizuobiaozhun023127"></i></button>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="text-danger text-center">
                        抱歉没有找到\"${keyword}\"商品
                    </div>
                </c:otherwise>
            </c:choose>

        </div>
    </div>
</div>
<%@include file="master/Foot.jsp" %>
</body>
<script src="/static/js/Head.js"></script>
<script src="/static/js/public.js"></script>
<script src="/static/js/search.js"></script>
</html>
