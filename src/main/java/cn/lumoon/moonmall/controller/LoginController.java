package cn.lumoon.moonmall.controller;

import cn.lumoon.moonmall.model.Phone;
import cn.lumoon.moonmall.model.User;
import cn.lumoon.moonmall.service.LoginService;
import cn.lumoon.moonmall.utils.PhoneCodeUtil;
import cn.lumoon.moonmall.utils.SpringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 登录前端控制器，负责配合前端的ajax的登录操作
 * 同时也负责转发到登录页面
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    @Resource
    LoginService loginService;

    /**
     * 前端ajax获取当前session登录的用户
     * 如没有返回一个属性空的User
     * @param request
     * @return
     */
    @RequestMapping("/check")
    @ResponseBody
    public User check(HttpServletRequest request){
        HttpSession session = request.getSession();
        if (session.getAttribute("user") == null) {
            return new User(0,null,null,null);
        }
        return (User) session.getAttribute("user");
    }

    /**
     * 去登录页面
     * @return
     */
    @RequestMapping("/tologin")
    public String toLogin(){
        return "login";
    }

    /**
     * 去注册页面
     * @return
     */
    @RequestMapping("/toreg")
    public String toRegister() {
        return "register";
    }


    /**
     * 注册
     * @param phone
     * @return
     */
    @RequestMapping("/sendCode")
    @ResponseBody
    public String sendCode(String phone,String time){
        Phone p = SpringUtil.getContext().getBean(Phone.class);
        p.setPhone(phone);
        return PhoneCodeUtil.sendSMS(p,time);
    }

    /**
     * 验证手机号和验证码是否正确
     * @param phone
     * @return 返回状态码
     */
    @RequestMapping("/verificationCode")
    @ResponseBody
    public String verificationCode(@RequestBody Phone phone){
        return PhoneCodeUtil.veriCode(phone);
    }

    /**
     * 验证用户名是否重复
     * @return
     */
    @RequestMapping("/accountVer")
    @ResponseBody
    public String accountNameVerify(String username) {
        System.out.println(username);
        User user = loginService.findUserByName(username);
        if (user != null) {
            return "true";
        }
        return "false";
    }
}
