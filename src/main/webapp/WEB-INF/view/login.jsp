<%--
  Created by IntelliJ IDEA.
  User: Vince
  Date: 2019/1/14
  Time: 9:36
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

    <link rel="stylesheet" href="/static/css/login.css">

    <script src="/static/js/jquery-3.3.1.min.js"></script>

    <script src="/static/js/bootstrap.min.js"></script>



    <title>MoonMall登陆</title>
</head>
<body>
<header>
    <div class="w">
        <div class="logo">
            <a href="/index.jsp"><img src="/static/images/logo/Login.png" alt=""></a>
        </div>
    </div>
</header>
<div id="body">
    <div class="content">
        <div class="login-warp">
            <div class="w">
                <div class="login-form">
                    <div class="log-title">
                        <h3 class="text-center">账户登录</h3>
                    </div>
                    <div>
                        <div class="log-item">
                            <div class="msg-wrap">
                                <div class="msg-error hide">
                                    <b></b>
                                </div>
                            </div>
                            <div class="items">
                                <div class="item fore-item1">
                                    <label for="loginname" class="login-label name-label"></label>
                                    <input id="loginname" class="" type="text" name="username" id="username"
                                           placeholder="用户名/邮箱/已验证手机号">
                                    <span class="clear-btn" style="display: none;"></span>
                                </div>
                                <div class="item fore-item2">
                                    <label for="loginpwd" class="login-label pwd-label"></label>
                                    <input id="loginpwd" class="" type="password" name="password" id="password"
                                           placeholder="密码">
                                    <span class="clear-btn" style="display: none;"></span>
                                </div>
                                <div class="item fore-item3">
                                    <div class="safe">
                                    <span class="forget-pw-safe">
                                        <a href="">忘记密码</a>
                                    </span>
                                    </div>
                                </div>
                                <div class="item fore-item4">
                                    <div class="login-button">
                                        <button class="btn btn-block btn-danger">登录</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="coagent">
                            <div class="thrid-login">
                                <div class="third-qq">
                                    <b class="QQ-icon"></b>
                                    <a href="#">QQ</a>
                                    <span class="line">|</span>
                                </div>
                                <div class="third-weixin">
                                    <b class="weixin-icon"></b>
                                    <a href="#">微信</a>
                                </div>
                                <div class="go-register">
                                    <b></b>
                                    <a href="/login/toreg">立即注册</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer>
    <div class="mod_copyright">
        <div class="text-center">
            <span>MoonMall商城</span>
        </div>
        <div class="text-center">
            <span>本商城仅供学习测试使用，在被网站产生的一些支付将不被处理</span>
            <div id="footer-2013">
                <div class="copyright">
                    Copyright&nbsp;©&nbsp;2018-2019&nbsp;&nbsp;lumoon.com&nbsp;版权所有
                </div>
            </div>
        </div>
    </div>
</footer>
</body>
<script src="/static/js/Login.js"></script>
</html>
