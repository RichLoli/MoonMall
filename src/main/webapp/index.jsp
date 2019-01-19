<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/static/images/logo/cbnhj-dz1u8-002.ico" type="image/x-icon"/>
    <script src="static/js/jquery-3.3.1.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="static/css/iconfont.css">
    <link rel="stylesheet" href="static/css/index.css">
    <link rel="stylesheet" href="static/css/Head.css">
    <link rel="stylesheet" href="static/css/Foot.css">
    <title>欢迎来到首页-MoonMall</title>
</head>
<body>
<%@include file="WEB-INF/view/master/Head.jsp" %>
<section>
    <div class="w">
        <div class="search-head" style="display: none">
            <div class="search-context">
                <div class="logo">
                    <img src="/static/images/logo/relogo.png" alt="" class="img-responsive">
                </div>
                <div class="form">
                    <input type="text" class="">
                    <button class="button search-button">
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div id="picture-box">
        <div class="w">
            <div class="subitem hide">
                <div class="inner-box">

                </div>
                <div class="comment-box">

                </div>
            </div>
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
                            <span>医疗保健&nbsp;/&nbsp;&nbsp;计生情趣</span>
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
            <div class="box top">
                <div class="box_hd">
                    <a href="" class="box_hd_lk">
                        <h3 class="box_tit">排行榜</h3>
                    </a>
                </div>
                <div class="box_bd">
                    <div class="top_inner">
                        <div class="tab top_tab">
                            <div class="tab_head">
                                <div class="tab_head_item">
                                    <a class="top_tab_lk" href="//top.jd.com/?cateId=653" target="_blank">手机</a>
                                </div>
                                <div class="tab_head_item">
                                    <a class="top_tab_lk" href="//top.jd.com/?cateId=1583" target="_blank">休闲食品</a>
                                </div>
                                <div class="tab_head_item active">
                                    <a class="top_tab_lk" href="//top.jd.com/?cateId=686" target="_blank">外设产品</a>
                                </div>
                                <div class="tab_head_item">
                                    <a class="top_tab_lk" href="//top.jd.com/?cateId=1342" target="_blank">男装</a>
                                </div>
                                <div class="tab_head_item">
                                    <a class="top_tab_lk" href="//top.jd.com/?cateId=12010" target="_blank">休闲棉袜</a>
                                </div>
                            </div>
                            <div class="tab_body">
                                <div class="tab_body_item">
                                    <div class="slider top_wrapper">
                                        <div class="slider_list" style="overflow: hidden">
                                            <div class="slider_wrapper"
                                                 style="opacity: 1; width: 1400px; transform: translate3d(0px, 0px, 0px); transition: none 0s ease 0s;">
                                                <div class="slider_item top_list slider_active" data-index="0"
                                                     style="float: left; width: 350px;">
                                                    <div class="top_item">
                                                        <a class="top_item_lk"
                                                           href="//top.jd.com/?cateId=653&amp;itemId=7694047"
                                                           target="_blank" clstag="h|keycount|core|ranking_c0101">
                                                            <div class="lazyimg lazyimg_loaded top_item_img">
                                                                <img src="//img10.360buyimg.com/mobilecms/s80x80_jfs/t21415/332/642302956/189613/778f2021/5b13cd6cN8e12d4aa.jpg!q90.webp"
                                                                     class="lazyimg_img">
                                                            </div>
                                                            <span class="top_item_rank top_item_rank_1">1</span>
                                                            <span class="top_item_name">
                                                                荣耀9i 4GB+64GB 幻夜黑 移动联通电信4G全面屏手机 双卡双待
                                                            </span>
                                                        </a>
                                                    </div>
                                                    <div class="top_item">
                                                        <a class="top_item_lk"
                                                           href="//top.jd.com/?cateId=653&amp;itemId=8735304"
                                                           target="_blank" clstag="h|keycount|core|ranking_c0102">
                                                            <div class="lazyimg lazyimg_loaded top_item_img">
                                                                <img src="//img11.360buyimg.com/mobilecms/s80x80_jfs/t1/21333/14/5246/180334/5c3ad7b6Ef7d727c0/c16e93d0bf77a31f.jpg!q90.webp"
                                                                     class="lazyimg_img">
                                                            </div>
                                                            <span class="top_item_rank top_item_rank_2">2</span>
                                                            <span class="top_item_name">
                                                                荣耀8X 千元屏霸 91%屏占比 2000万AI双摄 4GB+64GB 幻夜黑 移动联通电信4G全面屏手机 双卡双待
                                                            </span>
                                                        </a>
                                                    </div>
                                                    <div class="top_item">
                                                        <a class="top_item_lk"
                                                           href="//top.jd.com/?cateId=653&amp;itemId=5089253"
                                                           target="_blank" clstag="h|keycount|core|ranking_c0103">
                                                            <div class="lazyimg lazyimg_loaded top_item_img"><img
                                                                    src="//img20.360buyimg.com/mobilecms/s80x80_jfs/t10675/253/1344769770/66891/92d54ca4/59df2e7fN86c99a27.jpg!q90.webp"
                                                                    class="lazyimg_img">
                                                            </div>
                                                            <span class="top_item_rank top_item_rank_3">3</span>
                                                            <span
                                                                    class="top_item_name">Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机</span></a>
                                                    </div>
                                                </div>
                                                <div class="slider_item top_list slider_next" data-index="1"
                                                     style="float: left; width: 350px;">
                                                    <div class="top_item">
                                                        <a class="top_item_lk"
                                                           href="//top.jd.com/?cateId=653&amp;itemId=100000177760"
                                                           target="_blank"
                                                           clstag="h|keycount|core|ranking_c0104">
                                                            <div class="lazyimg lazyimg_loaded top_item_img">
                                                                <img
                                                                        src="//img11.360buyimg.com/mobilecms/s80x80_jfs/t1/3405/18/3537/69901/5b997c0aE5dc8ed9f/a2c208410ae84d1f.jpg!q90.webp"
                                                                        class="lazyimg_img"></div>
                                                            <span class="top_item_rank top_item_rank_4">4</span><span
                                                                class="top_item_name">Apple iPhone XR (A2108) 128GB 黑色 移动联通电信4G手机 双卡双待</span></a>
                                                    </div>
                                                    <div class="top_item"><a class="top_item_lk"
                                                                             href="//top.jd.com/?cateId=653&amp;itemId=5853579"
                                                                             target="_blank"
                                                                             clstag="h|keycount|core|ranking_c0105">
                                                        <div class="lazyimg lazyimg_loaded top_item_img"><img
                                                                src="//img20.360buyimg.com/mobilecms/s80x80_jfs/t13441/73/1250191369/239632/8b94bbc6/5a1d1e2dN6ba9aac4.jpg!q90.webp"
                                                                class="lazyimg_img"></div>
                                                        <span class="top_item_rank top_item_rank_5">5</span><span
                                                            class="top_item_name">荣耀 V10 全网通高配版 6GB+64GB 幻夜黑 移动联通电信4G全面屏游戏手机 双卡双待</span></a>
                                                    </div>
                                                    <div class="top_item"><a class="top_item_lk"
                                                                             href="//top.jd.com/?cateId=653&amp;itemId=7479820"
                                                                             target="_blank"
                                                                             clstag="h|keycount|core|ranking_c0106">
                                                        <div class="lazyimg lazyimg_loaded top_item_img"><img
                                                                src="//img10.360buyimg.com/mobilecms/s80x80_jfs/t21532/360/764701806/223647/83d30500/5b1799cdN37efd6ec.jpg!q90.webp"
                                                                class="lazyimg_img"></div>
                                                        <span class="top_item_rank top_item_rank_6">6</span><span
                                                            class="top_item_name">荣耀9i 4GB+64GB 魅海蓝 移动联通电信4G全面屏手机 双卡双待</span></a>
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
            </div>
            <div class="box">
                <div class="box_hd">
                    <a href="" class="box_hd_lk">
                        <h3 class="box_tit">新品首发</h3>
                    </a>
                </div>
                <div class="box_bd">
                    <div class="news">
                        <img class="img-responsive"
                             src="//img10.360buyimg.com/babel/s350x370_jfs/t25189/276/2239701655/57676/fedc60db/5bc7ffccN66bbb68d.png!q90!cc_350x370">
                    </div>
                </div>
            </div>
            <div class="box box_last">
                <div class="box_hd">
                    <a href="" class="box_hd_lk">
                        <h3 class="box_tit">MM超市</h3>
                    </a>
                </div>
                <div class="box_bd">
                    <div class="sort_wrapper clearfix"><a class="sort_large" href="//chaoshi.jd.com/" target="_blank"
                                                          title="超市首页" clstag="h|keycount|life|chan#01_c01">
                        <div class="lazyimg lazyimg_loaded sort_large_img"><img
                                src="//img12.360buyimg.com/babel/s350x180_jfs/t22660/197/997998956/85092/652504db/5b4c45bfNcfd19212.jpg!q90!cc_350x180"
                                class="lazyimg_img"></div>
                    </a><a class="sort_middle" href="//chaoshi.jd.com/liangfan" target="_blank" title="超值量贩"
                           clstag="h|keycount|life|chan#01_c02">
                        <div class="lazyimg lazyimg_loaded sort_middle_img"><img
                                src="//img14.360buyimg.com/babel/s170x180_jfs/t23272/158/1009314516/67198/8dad32ab/5b4c4450N40d9c9ad.jpg!q90!cc_170x180"
                                class="lazyimg_img"></div>
                    </a><a class="sort_middle" href="//chaoshi.jd.com/pinpai" target="_blank" title="品牌特卖"
                           clstag="h|keycount|life|chan#01_c03">
                        <div class="lazyimg lazyimg_loaded sort_middle_img"><img
                                src="//img11.360buyimg.com/babel/s170x180_jfs/t23998/27/1009560461/57611/2bcf791f/5b4c43a8Ndb67446f.jpg!q90!cc_170x180"
                                class="lazyimg_img"></div>
                    </a></div>
                </div>
            </div>
        </div>
    </div>
    <div class="M_core_ch1">
        <div class="grid_c1 corechn1_inner">
            <div class="box">
                <div class="box_hd">
                    <a href="" class="box_hd_lk">
                        <h3 class="box_tit">家电馆</h3>
                    </a>
                </div>
                <div class="box_bd">
                    <div class="sort_wrapper clearfix"><a class="sort_large" href="//chaoshi.jd.com/" target="_blank"
                                                          title="超市首页" clstag="h|keycount|life|chan#01_c01">
                        <div class="lazyimg lazyimg_loaded sort_large_img">
                            <img src="//img10.360buyimg.com/babel/s350x180_jfs/t1/26013/25/4273/133143/5c2f2c8dE7818bfa2/4fd8d50992006a05.jpg!q90!cc_350x180"
                                 class="lazyimg_img"></div>
                    </a><a class="sort_middle" href="//chaoshi.jd.com/liangfan" target="_blank" title="超值量贩"
                           clstag="h|keycount|life|chan#01_c02">
                        <div class="lazyimg lazyimg_loaded sort_middle_img">
                            <img src="//img12.360buyimg.com/babel/s170x180_jfs/t1/17276/3/3021/89163/5c232e97E2b00eea0/75a607908ac356b5.png!q90!cc_170x180"
                                 class="lazyimg_img"></div>
                    </a><a class="sort_middle" href="//chaoshi.jd.com/pinpai" target="_blank" title="品牌特卖"
                           clstag="h|keycount|life|chan#01_c03">
                        <div class="lazyimg lazyimg_loaded sort_middle_img">
                            <img src="//img12.360buyimg.com/babel/s170x180_jfs/t1/20939/20/3419/42632/5c25ee69E16cb9fb8/ee8231871500ac04.jpg!q90!cc_170x180"
                                 class="lazyimg_img">
                        </div>
                    </a></div>
                </div>
            </div>
            <div class="box">
                <div class="box_hd">
                    <a href="" class="box_hd_lk">
                        <h3 class="box_tit">我型我塑</h3>
                    </a>
                </div>
                <div class="box_bd">
                    <div class="sort_wrapper clearfix"><a class="sort_large" href="//chaoshi.jd.com/" target="_blank"
                                                          title="超市首页" clstag="h|keycount|life|chan#01_c01">
                        <div class="lazyimg lazyimg_loaded sort_large_img">
                            <img src="//img11.360buyimg.com/babel/s350x180_jfs/t1/9900/24/480/75644/5bcaaec0E18d6bfe6/6dd3c04a3aa660c2.jpg!q90!cc_350x180"
                                 class="lazyimg_img">
                        </div>
                    </a><a class="sort_middle" href="//chaoshi.jd.com/liangfan" target="_blank" title="超值量贩"
                           clstag="h|keycount|life|chan#01_c02">
                        <div class="lazyimg lazyimg_loaded sort_middle_img">
                            <img src="//img11.360buyimg.com/babel/s170x180_jfs/t28648/179/63691475/75477/f38cc744/5be6a4f7N6a040b4e.jpg!q90!cc_170x180"
                                 class="lazyimg_img">
                        </div>
                    </a><a class="sort_middle" href="//chaoshi.jd.com/pinpai" target="_blank" title="品牌特卖"
                           clstag="h|keycount|life|chan#01_c03">
                        <div class="lazyimg lazyimg_loaded sort_middle_img">
                            <img src="//img30.360buyimg.com/babel/s170x180_jfs/t1/28166/40/4582/62224/5c32f66cE02ac23ab/0a0ffc8b6ae6a6b8.jpg!q90!cc_170x180"
                                 class="lazyimg_img">
                        </div>
                    </a></div>
                </div>
            </div>
            <div class="box box_last">
                <div class="box_hd">
                    <a href="" class="box_hd_lk">
                        <h3 class="box_tit">运动户外</h3>
                    </a>
                </div>
                <div class="box_bd">
                    <div class="sort_wrapper clearfix"><a class="sort_large" href="//chaoshi.jd.com/" target="_blank"
                                                          title="超市首页" clstag="h|keycount|life|chan#01_c01">
                        <div class="lazyimg lazyimg_loaded sort_large_img">
                            <img src="//img20.360buyimg.com/babel/s350x180_jfs/t1/2882/22/6978/66609/5ba484dfEeccc826f/a1fa7d1b1fb91116.jpg!q90!cc_350x180"
                                 class="lazyimg_img">
                        </div>
                    </a>
                        <a class="sort_middle" href="//chaoshi.jd.com/liangfan" target="_blank" title="超值量贩"
                           clstag="h|keycount|life|chan#01_c02">
                            <div class="lazyimg lazyimg_loaded sort_middle_img">
                                <img src="//img14.360buyimg.com/babel/s170x180_jfs/t1/1747/25/9420/89155/5bac7caaE37165a60/715948054cc317bb.jpg!q90!cc_170x180"
                                     class="lazyimg_img">
                            </div>
                        </a>
                        <a class="sort_middle" href="//chaoshi.jd.com/pinpai" target="_blank" title="品牌特卖"
                           clstag="h|keycount|life|chan#01_c03">
                            <div class="lazyimg lazyimg_loaded sort_middle_img">
                                <img src="//img30.360buyimg.com/babel/s170x180_jfs/t27604/223/460220708/73937/217e8c73/5baf3106Ncf82be13.jpg!q90!cc_170x180"
                                     class="lazyimg_img">
                            </div>
                        </a></div>
                </div>
            </div>
        </div>
    </div>
</section>
<%@include file="WEB-INF/view/master/Foot.jsp" %>
</body>
<script src="static/js/index.js"></script>
<script src="static/js/Head.js"></script>
<script src="static/js/public.js"></script>
</html>