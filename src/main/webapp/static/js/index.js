//获取轮播按钮的div
var $pic_index = $(".pic-index span");
//获取轮播图片元素
var $lun_pic = $(".picbox .lun-pic-auto");
//初始化轮播图片索引
//注意 index不是当前图片索引 temp才是
var pic_next_index = 1;
var pic_curr_temp = 0;


$(function () {
    $(".picbox .lun-pic-auto:gt(0)").fadeOut();
    //定时函数切换图片
    setInterval(change_pic, 5000);
});

//切换图片函数
function change_pic() {
    change_out(pic_curr_temp);

    //保存上一个索引
    pic_curr_temp = pic_next_index;

    change_in(pic_next_index);
    //索引自增
    pic_next_index++;
    //防止索引越界
    if (pic_next_index == 5) {
        pic_next_index = 0;
    }
}

//轮播按钮点击事件
$pic_index.click(function () {
    //获取当前点击索引
    var curr_obj_index = $pic_index.index(this);
    if (curr_obj_index != pic_curr_temp) {
        //隐藏当前显示图片
        change_out(pic_curr_temp);
        //保存当前点击索引
        pic_curr_temp = curr_obj_index;
        //显示当前点击索引
        change_in(curr_obj_index);
        //将下一张索引计算好
        if (curr_obj_index == 4) {
            pic_next_index = 0;
        } else {
            pic_next_index = curr_obj_index + 1;
        }
    }
});

function change_out(current_index) {
    //将前一张图片淡出
    $($lun_pic[current_index]).fadeOut();
    //去除计数按钮样式
    $($pic_index[current_index]).removeClass("pic-active");

}

function change_in(next_index) {
    //将下一张图片淡入
    $($lun_pic[next_index]).fadeIn();
    //增加样式
    $($pic_index[next_index]).addClass("pic-active");
}

var isLogin;

//登录点击触发函数
function login() {
    $.get("", function (data) {
            if (data === 100) {

            }
        }
    );
}

//注册触发函数
function register() {

}

//轮播图左侧菜单鼠标悬浮事件
$("#items-list li a").hover(function () {
    $(this).addClass("js-menu-item-on");
}, function () {
    $(this).removeClass("js-menu-item-on")
});

//轮播图左右按钮悬浮样式
$(".picbox .change-button").hover(function () {
    $(this).addClass("dark-button");
}, function () {
    $(this).removeClass("dark-button");
});

//轮播图左右按钮点击事件
$(".picbox #right-button").click(function () {
    if (pic_curr_temp != 4) {
        change_out(pic_curr_temp);
        pic_curr_temp++;
        change_in(pic_curr_temp);
        if (pic_curr_temp == 4) {
            pic_next_index = 0;
        } else {
            pic_next_index++;
        }

    }
});

$(".picbox #left-button").click(function () {
    if (pic_curr_temp != 0) {
        change_out(pic_curr_temp);
        pic_curr_temp--;
        change_in(pic_curr_temp);
        if (pic_curr_temp == 0) {
            pic_next_index = 1;
        } else {
            pic_next_index--;
        }
    }
});


