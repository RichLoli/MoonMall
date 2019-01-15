<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script src="static/js/jquery-3.3.1.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="static/css/iconfont.css">
    <link rel="stylesheet" href="static/css/index.css">
    <link rel="stylesheet" href="static/css/Head.css">
    <link rel="stylesheet" href="static/css/Foot.css">
</head>
<body>
<%@include file="WEB-INF/view/master/Head.jsp"%>
<section>
    <div id="picture-box">
        <div class="w">
            <div id="items-list">
                <ul>
                    <li>
                        <a href="javascript:void(0)">
                            <span>手机&nbsp;/&nbsp;电脑&nbsp;/&nbsp;办公</span>
                            <i class="iconfont icon-jiantou1 jiantou"></i>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <span>家用电器&nbsp;/&nbsp;家居&nbsp;/&nbsp;家具</span>
                            <i class="iconfont icon-jiantou1 jiantou"></i>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <span>男装&nbsp;/&nbsp;女装&nbsp;/&nbsp;内衣</span>
                            <i class="iconfont icon-jiantou1 jiantou"></i>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <span>美妆&nbsp;/&nbsp;个护清洁&nbsp;/&nbsp;宠物</span>
                            <i class="iconfont icon-jiantou1 jiantou"></i>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <span>女鞋&nbsp;/&nbsp;箱包&nbsp;/&nbsp;钟表&nbsp;/&nbsp;珠宝</span>
                            <i class="iconfont icon-jiantou1 jiantou"></i>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <span>男鞋&nbsp;/&nbsp;运动&nbsp;/&nbsp;户外</span>
                            <i class="iconfont icon-jiantou1 jiantou"></i>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <span>房产&nbsp;/&nbsp;汽车&nbsp;/&nbsp;汽车用品</span>
                            <i class="iconfont icon-jiantou1 jiantou"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <div id="pic-list">
                <div class="picbox">
                    <a href="javascript:void(0)">
                        <div class="lun-pic-auto">
                            <img src="static/images/lun/lun1.jpg" alt="" width="100%" height="100%">
                        </div>
                    </a>
                    <a href="javascript:void(0)">
                        <div class="lun-pic-auto">
                            <img src="static/images/lun/lun2.jpg" alt="" width="100%" height="100%">
                        </div>
                    </a>
                    <a href="javascript:void(0)">
                        <div class="lun-pic-auto">
                            <img src="static/images/lun/lun3.jpg" alt="" width="100%" height="100%">
                        </div>
                    </a>
                    <a href="javascript:void(0)">
                        <div class="lun-pic-auto">
                            <img src="static/images/lun/lun4.jpg" alt="" width="100%" height="100%">
                        </div>
                    </a>
                    <a href="javascript:void(0)">
                        <div class="lun-pic-auto">
                            <img src="static/images/lun/lun5.jpg" alt="" width="100%" height="100%">
                        </div>
                    </a>
                    <div class="pic-index">
                        <span class="pic-active"></span>
                        <span class=""></span>
                        <span class=""></span>
                        <span class=""></span>
                        <span class=""></span>
                    </div>
                    <a href="javascript:;" id="left-button" class="iconfont
                    icon-iconfontzhizuobiaozhun023126 change-button"
                    ></a>
                    <a href="javascript:;" id="right-button" class="iconfont
                    icon-iconfontzhizuobiaozhun023127 change-button"></a>
                </div>
                <div class="picinfo">

                </div>
            </div>
            <div id="fs_col">
                <div class="m_rec">
                    <div>
                        <a href="#">
                            <img src="static/images/1f83d20a686195ec.jpg" alt="">
                        </a>
                    </div>
                    <div>
                        <a href="#">
                            <img src="static/images/90e6e0196ae5177f.jpg" alt="">
                        </a>
                    </div>
                    <div>
                        <a href="#">
                            <img src="static/images/92fb657ae2522613.jpg" alt="">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="sk" id="J_seckill">
        <div class="grid_c1 sk_inner">
            <div class="sk_hd">
                <a class="sk_hd_lk" href="//miaosha.jd.com" target="_blank"
                   clstag="h|keycount|core|seckill_a">
                    <div class="sk_tit">京东秒杀</div>
                    <div class="sk_subtit">FLASH DEALS</div>
                    <i class="sk_ico"></i>
                    <div class="sk_desc">本场距离结束还剩</div>
                    <div class="sk_cd">
                        <div class="cd">
                            <div class="cd_item cd_day"><span class="cd_item_txt">00</span></div>
                            <div class="cd_item cd_hour"><span class="cd_item_txt">00</span></div>
                            <div class="cd_item cd_minute"><span class="cd_item_txt">30</span></div>
                            <div class="cd_item cd_second"><span class="cd_item_txt">02</span></div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="sk_bd">
                <div class="sk_list">
                    <div class="sk_list_item col-lg-3 well">
                        <img src="//img11.360buyimg.com/mobilecms/s140x140_jfs/t28375/31/226822192/313410/ed8ef565/5bebd3cbN295f3f6b.jpg!q90.webp"
                             alt="">
                        <p class="sk_item_name">联想(Lenovo)小新Air13.3英寸超轻薄笔记本电脑(英特尔酷睿i5-8265U 8G 512G SSD MX150
                            高色域)轻奢灰</p>
                        <div class="sk_item_price"><span
                                class="mod_price sk_item_price_new"><i>¥</i><span>5298.00</span></span><span
                                class="mod_price sk_item_price_origin"><i>¥</i><span>5899.00</span></span></div>
                    </div>
                    <div class="sk_list_item col-lg-3 well">
                        <img src="//img11.360buyimg.com/mobilecms/s140x140_jfs/t1/19211/9/4898/86202/5c359b75E0f398245/39cfce2a5218aa04.jpg!q90.webp">
                        <p class="sk_item_name">松下 大1.5匹 二级能效 原装压缩机 怡众冷暖壁挂式家用空调挂机
                            CS-SA13KH2-1/CU-SA13KH2-1（panasonic）</p>
                        <div class="sk_item_price"><span
                                class="mod_price sk_item_price_new"><i>¥</i><span>5298.00</span></span><span
                                class="mod_price sk_item_price_origin"><i>¥</i><span>5899.00</span></span></div>
                    </div>
                    <div class="sk_list_item col-lg-3 well">
                        <img src="//img11.360buyimg.com/mobilecms/s140x140_jfs/t1/4527/1/5981/186643/5ba1b24bE6c76c507/0a0ec4be7251df87.jpg!q90.webp">
                        <p class="sk_item_name">三只松鼠每日坚果年货节礼盒零食坚果年货大礼包孕妇零食小吃榛子巴旦木仁开心果混合果仁30袋装750g/盒</p>
                        <div class="sk_item_price"><span
                                class="mod_price sk_item_price_new"><i>¥</i><span>5298.00</span></span><span
                                class="mod_price sk_item_price_origin"><i>¥</i><span>5899.00</span></span></div>
                    </div>
                    <div class="sk_list_item col-lg-3 well">
                        <img src="//img20.360buyimg.com/mobilecms/s140x140_jfs/t1/7140/24/8023/94423/5c0a4c5bEaa26a8ac/512a0e8588f0b67e.jpg!q90.webp">
                        <p class="sk_item_name">最生活（a-life）毛巾 纯棉强吸水毛巾 全棉加厚面巾 成人家用 小米洗脸巾 3条装 白/蓝/绿</p>
                        <div class="sk_item_price">
                            <span class="mod_price sk_item_price_new">
                                <i>¥</i>
                                <span>5298.00</span>
                            </span>
                            <span class="mod_price sk_item_price_origin">
                                <i>¥</i>
                                <span>5899.00</span>
                            </span>
                        </div>
                    </div>
                    <div class="sk_list_item col-lg-3 well">
                        <img src="//img20.360buyimg.com/mobilecms/s140x140_jfs/t1/7140/24/8023/94423/5c0a4c5bEaa26a8ac/512a0e8588f0b67e.jpg!q90.webp">
                        <p class="sk_item_name">最生活（a-life）毛巾 纯棉强吸水毛巾 全棉加厚面巾 成人家用 小米洗脸巾 3条装 白/蓝/绿</p>
                        <div class="sk_item_price">
                            <span class="mod_price sk_item_price_new">
                                <i>¥</i>
                                <span>5298.00</span>
                            </span>
                            <span class="mod_price sk_item_price_origin">
                                <i>¥</i>
                                <span>5899.00</span>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="M_core_ch1">
        <div class="grid_c1 corechn1_inner">
            <div class="box">

            </div>
            <div class="box">

            </div>
            <div class="box box_last">

            </div>
        </div>
    </div>
    <div class="M_core_ch1">
        <div class="grid_c1 corechn1_inner">
            <div class="box">

            </div>
            <div class="box">

            </div>
            <div class="box box_last">

            </div>
        </div>
    </div>
</section>
<%@include file="WEB-INF/view/master/Foot.jsp"%>
</body>
<script src="static/js/index.js"></script>
</html>