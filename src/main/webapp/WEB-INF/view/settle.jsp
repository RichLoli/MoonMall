<%--
  Created by IntelliJ IDEA.
  User: Vince
  Date: 2019/1/22
  Time: 17:30
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

    <link rel="stylesheet" href="/static/css/settle.css">

    <script src="/static/js/jquery-3.3.1.min.js"></script>

    <script src="/static/js/bootstrap.min.js"></script>

    <title>订单结算页</title>
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
                        <li class="addr-item" style="display: list-item;" selected="selected" >
                            <div class="consignee-item item-selected" longitude="1000.0" gclng="116.2512" latitude="1000.0" gclat="40.121" consigneeid="571833473" provinceid="1" cityid="2901" countyid="2906" id="consignee_index_div_571833473" consigneetype="0" clstag="pageclick|keycount|trade_201602181|1" c_div_custom_label="consignee_div">
                                <span limit="8" title="徐璐">徐璐</span><b></b>
                            </div>
                            <div class="addr-detail">
                                <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ -->
                                <span class="addr-name" limit="6" title="徐璐">徐璐</span>
                                <span class="addr-info" limit="45" title="北京 昌平区 城区以外  沙阳路18号北京科技职业学院">北京 昌平区 城区以外  沙阳路18号北京科技职业学院</span>
                                <span class="addr-tel">185****5675</span>
                            </div>
                            <div class="op-btns" consigneeid="571833473" isoldaddress="false">
                               	<a href="#none" class="ftx-05 edit-consignee">编辑</a>
                            </div>
                        </li>
                        <li class="addr-item" style="display: list-item;" selected="selected" >
                            <div class="consignee-item item-selected" longitude="1000.0" gclng="116.2512" latitude="1000.0" gclat="40.121" consigneeid="571833473" provinceid="1" cityid="2901" countyid="2906" id="consignee_index_div_571833473" consigneetype="0" clstag="pageclick|keycount|trade_201602181|1" c_div_custom_label="consignee_div">
                                <span limit="8" title="徐璐">徐璐</span><b></b>
                            </div>
                            <div class="addr-detail">
                                <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ -->
                                <span class="addr-name" limit="6" title="徐璐">徐璐</span>
                                <span class="addr-info" limit="45" title="北京 昌平区 城区以外  沙阳路18号北京科技职业学院">北京 昌平区 城区以外  沙阳路18号北京科技职业学院</span>
                                <span class="addr-tel">185****5675</span>
                            </div>
                            <div class="op-btns" consigneeid="571833473" isoldaddress="false">
                                <a href="#none" class="ftx-05 edit-consignee">编辑</a>
                            </div>
                        </li>
                        <li class="addr-item" style="display: list-item;" selected="selected" >
                            <div class="consignee-item item-selected" longitude="1000.0" gclng="116.2512" latitude="1000.0" gclat="40.121" consigneeid="571833473" provinceid="1" cityid="2901" countyid="2906" id="consignee_index_div_571833473" consigneetype="0" clstag="pageclick|keycount|trade_201602181|1" c_div_custom_label="consignee_div">
                                <span limit="8" title="徐璐">徐璐</span><b></b>
                            </div>
                            <div class="addr-detail">
                                <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ -->
                                <span class="addr-name" limit="6" title="徐璐">徐璐</span>
                                <span class="addr-info" limit="45" title="北京 昌平区 城区以外  沙阳路18号北京科技职业学院">北京 昌平区 城区以外  沙阳路18号北京科技职业学院</span>
                                <span class="addr-tel">185****5675</span>
                            </div>
                            <div class="op-btns" consigneeid="571833473" isoldaddress="false">
                                <a href="#none" class="ftx-05 edit-consignee">编辑</a>
                            </div>
                        </li>
                        <li class="addr-item" style="display: list-item;" selected="selected" >
                            <div class="consignee-item item-selected" longitude="1000.0" gclng="116.2512" latitude="1000.0" gclat="40.121" consigneeid="571833473" provinceid="1" cityid="2901" countyid="2906" id="consignee_index_div_571833473" consigneetype="0" clstag="pageclick|keycount|trade_201602181|1" c_div_custom_label="consignee_div">
                                <span limit="8" title="徐璐">徐璐</span><b></b>
                            </div>
                            <div class="addr-detail">
                                <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ -->
                                <span class="addr-name" limit="6" title="徐璐">徐璐</span>
                                <span class="addr-info" limit="45" title="北京 昌平区 城区以外  沙阳路18号北京科技职业学院">北京 昌平区 城区以外  沙阳路18号北京科技职业学院</span>
                                <span class="addr-tel">185****5675</span>
                            </div>
                            <div class="op-btns" consigneeid="571833473" isoldaddress="false">
                                <a href="#none" class="ftx-05 edit-consignee">编辑</a>
                            </div>
                        </li>
                        <li class="addr-item" style="display: list-item;" selected="selected" >
                            <div class="consignee-item item-selected" longitude="1000.0" gclng="116.2512" latitude="1000.0" gclat="40.121" consigneeid="571833473" provinceid="1" cityid="2901" countyid="2906" id="consignee_index_div_571833473" consigneetype="0" clstag="pageclick|keycount|trade_201602181|1" c_div_custom_label="consignee_div">
                                <span limit="8" title="徐璐">徐璐</span><b></b>
                            </div>
                            <div class="addr-detail">
                                <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ -->
                                <span class="addr-name" limit="6" title="徐璐">徐璐</span>
                                <span class="addr-info" limit="45" title="北京 昌平区 城区以外  沙阳路18号北京科技职业学院">北京 昌平区 城区以外  沙阳路18号北京科技职业学院</span>
                                <span class="addr-tel">185****5675</span>
                            </div>
                            <div class="op-btns" consigneeid="571833473" isoldaddress="false">
                                <a href="#none" class="ftx-05 edit-consignee">编辑</a>
                            </div>
                        </li>
                        <li class="addr-item" style="display: list-item;" selected="selected" >
                            <div class="consignee-item item-selected" longitude="1000.0" gclng="116.2512" latitude="1000.0" gclat="40.121" consigneeid="571833473" provinceid="1" cityid="2901" countyid="2906" id="consignee_index_div_571833473" consigneetype="0" clstag="pageclick|keycount|trade_201602181|1" c_div_custom_label="consignee_div">
                                <span limit="8" title="徐璐">徐璐</span><b></b>
                            </div>
                            <div class="addr-detail">
                                <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ -->
                                <span class="addr-name" limit="6" title="徐璐">徐璐</span>
                                <span class="addr-info" limit="45" title="北京 昌平区 城区以外  沙阳路18号北京科技职业学院">北京 昌平区 城区以外  沙阳路18号北京科技职业学院</span>
                                <span class="addr-tel">185****5675</span>
                            </div>
                            <div class="op-btns" consigneeid="571833473" isoldaddress="false">
                                <a href="#none" class="ftx-05 edit-consignee">编辑</a>
                            </div>
                        </li>
                        <li class="addr-item" style="display: list-item;" selected="selected" >
                            <div class="consignee-item item-selected" longitude="1000.0" gclng="116.2512" latitude="1000.0" gclat="40.121" consigneeid="571833473" provinceid="1" cityid="2901" countyid="2906" id="consignee_index_div_571833473" consigneetype="0" clstag="pageclick|keycount|trade_201602181|1" c_div_custom_label="consignee_div">
                                <span limit="8" title="徐璐">徐璐</span><b></b>
                            </div>
                            <div class="addr-detail">
                                <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ -->
                                <span class="addr-name" limit="6" title="徐璐">徐璐</span>
                                <span class="addr-info" limit="45" title="北京 昌平区 城区以外  沙阳路18号北京科技职业学院">北京 昌平区 城区以外  沙阳路18号北京科技职业学院</span>
                                <span class="addr-tel">185****5675</span>
                            </div>
                            <div class="op-btns" consigneeid="571833473" isoldaddress="false">
                                <a href="#none" class="ftx-05 edit-consignee">编辑</a>
                            </div>
                        </li>
                        <li class="addr-item" style="display: list-item;" selected="selected" >
                            <div class="consignee-item item-selected" longitude="1000.0" gclng="116.2512" latitude="1000.0" gclat="40.121" consigneeid="571833473" provinceid="1" cityid="2901" countyid="2906" id="consignee_index_div_571833473" consigneetype="0" clstag="pageclick|keycount|trade_201602181|1" c_div_custom_label="consignee_div">
                                <span limit="8" title="徐璐">徐璐</span><b></b>
                            </div>
                            <div class="addr-detail">
                                <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ -->
                                <span class="addr-name" limit="6" title="徐璐">徐璐</span>
                                <span class="addr-info" limit="45" title="北京 昌平区 城区以外  沙阳路18号北京科技职业学院">北京 昌平区 城区以外  沙阳路18号北京科技职业学院</span>
                                <span class="addr-tel">185****5675</span>
                            </div>
                            <div class="op-btns" consigneeid="571833473" isoldaddress="false">
                                <a href="#none" class="ftx-05 edit-consignee">编辑</a>
                            </div>
                        </li>
                        <li class="addr-item" style="display: list-item;" selected="selected" >
                            <div class="consignee-item item-selected" longitude="1000.0" gclng="116.2512" latitude="1000.0" gclat="40.121" consigneeid="571833473" provinceid="1" cityid="2901" countyid="2906" id="consignee_index_div_571833473" consigneetype="0" clstag="pageclick|keycount|trade_201602181|1" c_div_custom_label="consignee_div">
                                <span limit="8" title="徐璐">徐璐</span><b></b>
                            </div>
                            <div class="addr-detail">
                                <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ -->
                                <span class="addr-name" limit="6" title="徐璐">徐璐</span>
                                <span class="addr-info" limit="45" title="北京 昌平区 城区以外  沙阳路18号北京科技职业学院">北京 昌平区 城区以外  沙阳路18号北京科技职业学院</span>
                                <span class="addr-tel">185****5675</span>
                            </div>
                            <div class="op-btns" consigneeid="571833473" isoldaddress="false">
                                <a href="#none" class="ftx-05 edit-consignee">编辑</a>
                            </div>
                        </li>
                        <li class="addr-item" style="display: list-item;" selected="selected" >
                            <div class="consignee-item item-selected" longitude="1000.0" gclng="116.2512" latitude="1000.0" gclat="40.121" consigneeid="571833473" provinceid="1" cityid="2901" countyid="2906" id="consignee_index_div_571833473" consigneetype="0" clstag="pageclick|keycount|trade_201602181|1" c_div_custom_label="consignee_div">
                                <span limit="8" title="徐璐">徐璐</span><b></b>
                            </div>
                            <div class="addr-detail">
                                <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ -->
                                <span class="addr-name" limit="6" title="徐璐">徐璐</span>
                                <span class="addr-info" limit="45" title="北京 昌平区 城区以外  沙阳路18号北京科技职业学院">北京 昌平区 城区以外  沙阳路18号北京科技职业学院</span>
                                <span class="addr-tel">185****5675</span>
                            </div>
                            <div class="op-btns" consigneeid="571833473" isoldaddress="false">
                                <a href="#none" class="ftx-05 edit-consignee">编辑</a>
                            </div>
                        </li>
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
                                <div class="goods-item">
                                    <div class="p-img">
                                        <a href="" target="_blank">
                                            <img src="//img14.360buyimg.com/N4/jfs/t1/9471/22/10451/167543/5c231ebeE8f2d556b/c0d2146773faac20.jpg"
                                                  alt="">
                                        </a>
                                    </div>
                                    <div class="goods-msg">
                                        <div class="goods-msg-gel">
                                            <div class="p-name">
                                                <a href="http://item.jd.com/4335139.html?dist=" target="_blank">
                                                    Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/256GB闪存 MQD42CH/A)
                                                </a>
                                            </div>
                                            <div class="p-price ">
                                                <strong class="jd-price">￥ 8415.00
                                                </strong>
                                                <span class="p-num">x1</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="goods-item">
                                    <div class="p-img">
                                        <a href="" target="_blank">
                                            <img src="//img14.360buyimg.com/N4/jfs/t1/9471/22/10451/167543/5c231ebeE8f2d556b/c0d2146773faac20.jpg"
                                                 alt="">
                                        </a>
                                    </div>
                                    <div class="goods-msg">
                                        <div class="goods-msg-gel">
                                            <div class="p-name">
                                                <a href="http://item.jd.com/4335139.html?dist=" target="_blank">
                                                    Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/256GB闪存 MQD42CH/A)
                                                </a>
                                            </div>
                                            <div class="p-price ">
                                                <strong class="jd-price">￥ 8415.00
                                                </strong>
                                                <span class="p-num">x1</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="goods-item">
                                    <div class="p-img">
                                        <a href="" target="_blank">
                                            <img src="//img14.360buyimg.com/N4/jfs/t1/9471/22/10451/167543/5c231ebeE8f2d556b/c0d2146773faac20.jpg"
                                                 alt="">
                                        </a>
                                    </div>
                                    <div class="goods-msg">
                                        <div class="goods-msg-gel">
                                            <div class="p-name">
                                                <a href="http://item.jd.com/4335139.html?dist=" target="_blank">
                                                    Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/256GB闪存 MQD42CH/A)
                                                </a>
                                            </div>
                                            <div class="p-price ">
                                                <strong class="jd-price">￥ 8415.00
                                                </strong>
                                                <span class="p-num">x1</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="goods-item">
                                    <div class="p-img">
                                        <a href="" target="_blank">
                                            <img src="//img14.360buyimg.com/N4/jfs/t1/9471/22/10451/167543/5c231ebeE8f2d556b/c0d2146773faac20.jpg"
                                                 alt="">
                                        </a>
                                    </div>
                                    <div class="goods-msg">
                                        <div class="goods-msg-gel">
                                            <div class="p-name">
                                                <a href="http://item.jd.com/4335139.html?dist=" target="_blank">
                                                    Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/256GB闪存 MQD42CH/A)
                                                </a>
                                            </div>
                                            <div class="p-price ">
                                                <strong class="jd-price">￥ 8415.00
                                                </strong>
                                                <span class="p-num">x1</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="goods-item">
                                    <div class="p-img">
                                        <a href="" target="_blank">
                                            <img src="//img14.360buyimg.com/N4/jfs/t1/9471/22/10451/167543/5c231ebeE8f2d556b/c0d2146773faac20.jpg"
                                                 alt="">
                                        </a>
                                    </div>
                                    <div class="goods-msg">
                                        <div class="goods-msg-gel">
                                            <div class="p-name">
                                                <a href="http://item.jd.com/4335139.html?dist=" target="_blank">
                                                    Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/256GB闪存 MQD42CH/A)
                                                </a>
                                            </div>
                                            <div class="p-price ">
                                                <strong class="jd-price">￥ 8415.00
                                                </strong>
                                                <span class="p-num">x1</span>
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
        <div class="order-summary">
            <div class="statistic fr">
                <div class="list">
                    <span>
                        <em class="ftx-01">5</em>
                        件商品，总商品金额
                    </span>
                    ￥<em class="price">37419</em>
                </div>
            </div>
        </div>
        <div class="trade-foot">
            <div class="trade-foot-detail-com">
                <div class="fc-price-info">
                    <span class="price-tit">应付总额：</span>
                    <span class="price-num" id="sumPayPriceId">￥37419.00</span>
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
</html>
