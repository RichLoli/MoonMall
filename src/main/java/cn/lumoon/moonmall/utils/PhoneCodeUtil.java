package cn.lumoon.moonmall.utils;

import cn.lumoon.moonmall.model.Phone;
import com.cloopen.rest.sdk.CCPRestSDK;

import java.util.*;

/**
 * 验证码工具类
 * code：
 * 200 成功
 * 101 异常
 * 301 验证码失效或错误
 * @author loligafeo
 */
public class PhoneCodeUtil {

    /**
     * 服务器地址
     */
    public static String serverIP = "app.cloopen.com";

    /**
     * 服务器短裤
     */
    public static String serverPort = "8883";

    /**
     * 主账号id
     */
    public static String accountSid = "8aaf070867e8660f01680d537a6c11f9";

    /**
     * 主账号token
     */
    public static String accountToken = "ad1357ee45ce4af7a623b7bf7b731fe2";

    /**
     * 应用id
     */
    public static String appId = "8aaf070867e8660f01680d537ac31200";

    /**
     * 存储已发送手机号的集合
     */
    public static Map<String, Phone> phoneMap = Collections.synchronizedMap(new HashMap<String, Phone>());

    /**
     * 发送短信
     * @param phone 目标手机号码
     * @param time 有效时间
     * @return 返回发送的验证码
     */
    public static String sendSMS(Phone phone, String time) {
        HashMap<String, Object> result = null;
        phone.setVerifyCode(createCode());
        CCPRestSDK restAPI = new CCPRestSDK();
        // 初始化服务器地址和端口，格式如下，服务器地址不需要写https://
        restAPI.init(serverIP, serverPort);
        // 初始化主帐号和主帐号TOKEN
        restAPI.setAccount(accountSid, accountToken);
        // 初始化应用ID
        restAPI.setAppId(appId);
        result = restAPI.sendTemplateSMS(phone.getPhone(), "1", new String[]{phone.getVerifyCode(),time});
        System.out.println("SDKTestSendTemplateSMS result=" + result);
        if ("000000".equals(result.get("statusCode"))) {
            //正常返回输出data包体信息（map）
            HashMap<String, Object> data = (HashMap<String, Object>) result.get("data");
            Set<String> keySet = data.keySet();
            for (String key : keySet) {
                Object object = data.get(key);
                System.out.println(key + " = " + object);
            }
            phone.setSendTime(System.currentTimeMillis());
            //非线程安全
            phoneMap.put(phone.getPhone(), phone);
            return "200";
        } else {
            //异常返回输出错误码和错误信息
            System.out.println("错误码=" + result.get("statusCode") + " 错误信息= " + result.get("statusMsg"));
            return "101";
        }
    }

    /**
     * 生成随机数
     * @return
     */
    public static String createCode(){
        return ""+(new Random().nextInt(899999) + 100000);
    }

    /**
     * 验证前端传递的验证码是否有效
     * @param phone
     * @return
     */
    public static String veriCode(Phone phone){
        boolean iscontain = phoneMap.containsKey(phone.getPhone());
        if (iscontain) {
            Phone oldPhone = phoneMap.get(phone.getPhone());
            if (oldPhone.getVerifyCode().equals(phone.getVerifyCode())) {
                phoneMap.remove(oldPhone.getPhone());
                return "200";
            }
        }
        return "301";
    }
}
