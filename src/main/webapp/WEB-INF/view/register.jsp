<%--
  Created by IntelliJ IDEA.
  User: Vince
  Date: 2019/1/14
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" href="/static/images/cbnhj-dz1u8-002.ico" type="image/x-icon"/>

    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">

    <link rel="stylesheet" href="/static/css/iconfont.css">

    <link rel="stylesheet" href="/static/css/register.css">

    <script src="/static/js/jquery-3.3.1.min.js"></script>

    <title>MoonMall注册</title>

    <style>
        .text-center {
            text-align: center;
        }

        .mod_copyright{
            border-top: 1px #666666 solid;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="w">
        <a href="" class="logo"></a>
    </div>
    <div class="logo-title">欢迎注册</div>
</div>
<div class="container w">
    <div class="progress-bar">
        <div class="pro-step cur-step ">
            <span class="step-index">1</span>
            <p class="step-desc">验证手机号</p>
        </div>
        <div class="pro-line pro-line1 person-pro-line person-pro-line1 "></div>
        <div class="pro-step pro-step2 person-pro-step2  ">
            <span class="step-index">2</span>
            <p class="step-desc">填写账号信息</p>
        </div>
        <div class="pro-line pro-line2 person-pro-line person-pro-line2 "></div>
        <div class="pro-step pro-step3 person-pro-step3  ">
            <span class="step-index">3</span>
            <p class="step-desc">注册成功</p>
        </div>
    </div>
    <div class="main">
        <div class="reg-form">
            <div class="item-phone-wrap">
                <div class="form-item form-item-phone">
                    <label class="select-country" id="select-country" country_id="0086"
                           style="border: 1px solid rgb(221, 221, 221);">中国 0086</label>
                    <div class="item-input-wrap form-item-error"
                         style="border-top: 1px solid rgb(221, 221, 221); border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: none rgb(221, 221, 221); border-image: initial;">
                        <input type="text" id="form-phone" maxlength="11" name="phone" class="field"
                               placeholder="建议使用常用手机号">
                        <i class="i-status"></i>
                        <i class="i-cancel" style="display: none;"></i>
                    </div>
                    <div class="input-tip" >
                    <span id="form-phone-error" class="error" style="display: none">
                        <i class="i-error"></i>
                        格式错误
                    </span>
                    </div>
                </div>
            </div>
            <div class="item-phone-getcode" style="display: block">
                <div id="getPhoneButton" class="form-item getcode">
                    点击按钮进行验证
                </div>
            </div>
            <div class="item-phone-wrap" style="display: none">
                <div class="form-item form-item-phone">
                    <div class="phonecode-left" style="border-color: rgb(221, 221, 221); border-right-width: 1px; border-right-style: solid;">
                        <label for="form-phone-code">手机验证码</label>
                        <input type="text" id="form-phone-code" name="mobliecode" maxlength="6"
                               placeholder="请输入验证码" class="field phonecode">
                    </div>
                    <button id="getPhoneCode" class="btn-phonecode"
                            style="border-top: 1px solid rgb(221, 221, 221); border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: none; border-image: initial;">
                        重新获取
                    </button>
                    <div class="input-tip" >
                        <span id="form-code-info" style="display: none">
                        <i class="i-def"></i>
                        验证码已发送，120秒内输入有效
                        </span>
                    </div>
                </div>
            </div>
            <div class="form-green"></div>
            <div id="step1-next" class="btn-register">下一步</div>
        </div>
        <div id="step2-wrap">
            <div class="form-item form-item-account" id="form-item-account" style="border-color: rgb(153, 153, 153);">
                <label>用　户　名</label>
                <input type="text" id="form-account" name="regName" class="field" autocomplete="off" maxlength="20" placeholder="您的账户名和登录名" default="<i class='i-def'></i>支持中文、英文、数字、“-”、“_”的组合，4-20个字符">
                <i class="i-status"></i>
                <i class="i-cancel" style="display: none;"></i>
            </div>
            <div class="input-tip">
                <span></span>
            </div>
            <div class="form-item" style="z-index: 12; border-color: rgb(153, 153, 153);">
                <label>设 置 密 码</label>
                <input autocomplete="off" type="password" name="pwd" id="form-pwd" class="field" maxlength="20" placeholder="请设置您的用户密码" default="<i class='i-def'></i>建议使用字母、数字和符号两种及以上的组合，6-20个字符" aria-autocomplete="list">
                <i class="i-status"></i>
                <i class="i-cancel" style="display: none;"></i>
                <div class="capslock-tip tips" style="display: none;">大写已开启<b class="arrow"></b><b class="arrow-inner"></b></div></div>
            <div class="input-tip">
                <span></span>
            </div>
            <div class="form-item" style="z-index: 12; border-color: rgb(153, 153, 153);">
                <label>确 认 密 码</label>
                <input type="password" name="pwdRepeat" id="form-equalTopwd" class="field" placeholder="请再次输入密码" default="<i class='i-def'></i>请再次输入密码">
                <i class="i-status"></i>
                <i class="i-cancel" style="display: none;"></i>
                <div class="capslock-tip tips" style="display: none;">大写已开启<b class="arrow"></b><b class="arrow-inner"></b></div></div>
            <div class="input-tip">
                <span></span>
            </div>
            <div><button class="btn-register" id="form-register" clstag="pageclick|keycount|reg_puser_201804031|18">立即注册</button></div>
            <div class="input-tip">
                <span></span>
            </div>
            <!--<div class="back-btn" id="back-btn">返回上一步</div>-->
        </div>
        <div id="step-complet">
            <div>
                <div class="complet-img">

                </div>
                <div class="complet-text">
                    <span>您已经成功注册为MoonMall用户</span><br>
                    <a href="">返回首页</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div>
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
</div>
</body>
<script src="/static/js/register.js"></script>
</html>
