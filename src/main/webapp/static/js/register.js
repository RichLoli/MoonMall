$(function () {
    // $(".reg-form").hide();
    $("#step2-wrap").hide();
    $("#step-complet").hide();
});

//用户手机号
var phone;
//用户名
var username;
//用户密码
var password;


/**
 * 手机号是否合法标志位
 * @type {boolean}
 */
var isIllegal = false;

/**
 * 当手机号文本框失去焦点后执行的操作
 */
$("#form-phone").blur(function () {
    isIllegal = false;
    var phone = $(this).val();
    //正则表达式
    var reg = /^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;
    var $phone_error = $("#form-phone-error");
    //先判断手机号码是否为空
    if (phone != "") {
        if (!reg.test(phone)) {
            $phone_error.show();
        } else {
            $phone_error.hide();
            isIllegal = true;
        }
    } else {
        $phone_error.hide();
    }
});

//定时函数，用来限制验证码获取
var CountDown;
//限制时间字符串
var time = 10;


$("#getPhoneButton").click(function () {
    if (isIllegal != false) {
        requestCode();
        $("#form-code-info").show();
        $(this).parent().hide();
        $(".item-phone-wrap").show();
        $("#getPhoneCode").attr("disabled", "disabled");
        CountDown = setInterval(function () {
            if (time > 0) {
                $("#getPhoneCode").text(time + "秒后重新获取");
                time--;
                if (time == 0) {
                    clearInterval(CountDown);
                    $("#getPhoneCode").text("重新获取");
                    $("#getPhoneCode").removeAttr("disabled");
                    time = 10;
                    $("#form-code-info").hide();
                }
            }
        }, 1000);
    } else {
        $("#form-phone-error").show();
    }
});

$("#getPhoneCode").click(function () {
    if (isIllegal != false) {
        requestCode();
        $("#form-code-info").show();
        $("#getPhoneCode").attr("disabled", "disabled");
        CountDown = setInterval(function () {
            if (time > 0) {
                $("#getPhoneCode").text(time + "秒后重新获取");
                time--;
                if (time == 0) {
                    clearInterval(CountDown);
                    $("#getPhoneCode").text("重新获取");
                    $("#getPhoneCode").removeAttr("disabled");
                    time = 10;
                    $("#form-code-info").hide();
                }
            }
        }, 1000);
    } else {
        $("#form-phone-error").show();
    }
});

function requestCode() {
    $.post({
        url: "sendCode",
        data: {
            phone: $("#form-phone").val(),
            time: "1"
        },
        dataType: "text",
        success: function (data) {

        }
    });
}

//记录上一次输入的验证码
var currCode;
//验证码验证按钮点击事件
$("#step1-next").click(function () {
    var code = $("#form-phone-code").val();
    if (currCode != code) {
        $.post({
            url: "verificationCode",
            data: JSON.stringify({
                phone: $("#form-phone").val(),
                verifyCode: code,
                sendTime: "1"
            }),

            dataType: "text",
            contentType: "application/json;charset=utf-8",
            success: function (data) {
                if (data == "200") {
                    $(".reg-form").hide();
                    $("#step2-wrap").show();
                    $(".cur-step").removeClass("cur-step");
                    $(".pro-step2").addClass("cur-step");
                    phone = $("#form-phone").val();
                } else {
                    $("#form-code-info").show().text("验证码错误或已失效");
                    currCode = code;
                }
            }
        });
    }
});
//用户名合法标志位
var nameIllegal;

$("#form-account").blur(function () {
    var accountName = $(this).val();
    if (accountName != "") {
        $.get(
            {
                url: "accountVer?username="+accountName,
                dataType: "text",
                success:function (data) {
                    if (data == "true") {
                        $("#form-item-account").next().children("span").html("<span style='color: red'>该名称已经被使用，请您换一个名称</span>");
                        nameIllegal = false;
                    }else{
                        $("#form-item-account").next().children("span").html("该名称可以使用");
                        nameIllegal = true;
                        username = accountName;
                    }
                }
            }
        );
    }
});

//注册按钮事件
$("#form-register").click(function () {
    //密码
    var pwd = $("#form-pwd").val();
    //重复密码
    var eqPwd = $("#form-equalTopwd").val();
    //信息
    var info = "";
    //正则
    var reg = /^\w{6,20}/
    //判断第一条密码是否符合条件
    if (reg.test(pwd)) {
        //判断两次密码是否相等
        if (eqPwd == pwd) {
           //判断手机号是否有效
            if (isIllegal) {
                //判断用户名是否有效
                if (nameIllegal) {
                    password = pwd;
                    //发送注册请求
                    //该函数优化 日后再说 2019-1-15
                    $.post({
                        url:"register",
                        data:JSON.stringify({
                            id:username,
                            username: username,
                            password:password,
                            phone:phone
                        }),
                        dataType:"text",
                        contentType:"application/json;charset=utf-8",
                        success:function (data) {
                            $("#step2-wrap").hide();
                            $("#step-complet").show();
                            $(".cur-step").removeClass("cur-step");
                            $(".pro-step3").addClass("cur-step");
                        }
                    });
                }else{
                    $("#form-account").focus();
                }
            }else{
                $("#form-phone").focus();
            }
        }else{
            $("#pwd2").children("span").text("两次输入密码不一致");
        }
    }else{
        $("#pwd1").children("span").text("请输入6-20个字符");
    }
    $("#commit").children("span").text(info);
});