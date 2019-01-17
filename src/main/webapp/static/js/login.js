var username;
var password;

$("#loginsubmit").click(function () {
    var info = "<b></b>";
    username = $("#loginname").val();
    password = $("#loginpwd").val();
    if (username != "" || password != "") {
        if (username != "") {
            if (password != "") {
                $.post(
                    {
                        url: "log",
                        data: JSON.stringify({
                            username:username,
                            password:password
                        }),
                        contentType: "application/json;charset=utf-8",
                        dataType: "text",
                        success: function (data) {
                            if (data == "400") {
                                info = "用户名或密码错误";
                            }else{
                                window.location.href=document.referrer;
                            }
                        }
                    }
                );
            }else{
                info += "请输入密码";
            }
        }else{
            info += "请输入用户名";
        }
    }else{
        info += "请输入用户名和验证码"
    }

    $(".msg-error").html(info).removeClass("hide");

});