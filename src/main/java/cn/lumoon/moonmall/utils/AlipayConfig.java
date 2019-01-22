package cn.lumoon.moonmall.utils;

import java.io.FileWriter;
import java.io.IOException;

/**
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */
@SuppressWarnings("all")
public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016092200574094";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCdtzNFw/02UefJ6r1TgFepAg3ecIj8P6z1lhS7D0xxu4m0ak8Dk811psg52DNmjSeMFEWpAx0FG+on3squRU6GiWkgEv5sn63xNyUGaRxgjBzxVy8tMQ18UeraPUEUU3KCgqB2ZJxYpfsDN1BKrVppzVfvvtS+mIGn3xSjYoH11o6pCKVCciVgkk2lmGJVUtvm4KbNPIrj0E4tudc7h1K1ErNmOCMnRB5zDR/gIfSHvciW3I4gmrcAmYOkHqwokLGYl7F9anRrHzL59u+2sTfbU4+rDyLgijMs09PZ1QwslF3sGSdCIF30c35fCf9SLNSmkrZUMPjEwyyAtckFWcfFAgMBAAECggEAHRK1Z+nuFoJYuRcFmYvyHNydE+Eoz18pkgf9gFIcpGaOxuxF7oHjgQmipU8egowIu0DNao+BXPy9WGYwdJmgFRrlfx0hO4Lf/LROpfTgX0fU2gRZVPpS4xTytxJNmeKcHETaMZjwXUMTl48txOZZ4WESEcbaztusIvbzhf7VuCxvu8wFzav+wf5JK+j6v3d3QDWGzeVyrlP1H6WIsT8ySijUUiF1X0NlVl9ed7aiU5re+NUTQxJ1sLvEovypKWAo7FG6asucCq+FnCL5XzthvgLONNJbaqonvKYMF+6Zcf45kWcatiYuAQVIl5b7H1bjNVMV5P2zBxNfr7DCv0/WoQKBgQDa2jzYuPkylTJtVfKZs05zUgIlm1LETstyVDjq/OL/2PMMa0xjqDkb/PGE+6Hw9YiWTSXuXvu+A1bAa27fFmXhat+wQhw7+r+CMm+47zKV7cx+Watf/OKogiIfCYkFd/Og5e+lt+QoA7pW4P6C+TYbjkTZAYUe6yBNqXxcr+y4rQKBgQC4fGRmFqAT6kTgVAJ0xf5q61n68gpP0LLSUodWGEowoUaRlCx+s8T2g9L9QZY94bsV8Q1am/jCzTZxdAjRf7xHPJoMHMUPIgAIAYN+sd1VIDlxZxOdUYOYK017TbqW1FXnTn3XSrATdZ9qj/Wv4CLvgdNb2T0BDpUPN4Do88o2eQKBgBfQJUzDm8HoQAtrjbExtHiR1M/4vaHEnRh8l5DiIWULWy7fwfkaBdTIyhLZOn64iLsp+9WbGjNLs7XOOsslacKEWYCZQO850nq9ODDcPhnYPScGZMJWBuek+Ud9Rx6ENcstGc1jW/0KoszvQGJJ8Zw/97fRFYYOuX4Z0gFX1x8lAoGAaT0EZLwZWuLzoWgq8oQTithwvtcdjMRHjfToIPPANpd5UwhMjYZtIBa44CFu3CQNfgnBDWQV9sHrgbKoaSHNvHFUiv5KZ0SE8gwy/63kzW+RdSBQrxhV0hM5otIHU40S59z9qjd/08nwQ3CVvVtFco0DjcyRoS25WDHYRorzWjkCgYEAqOEVjyiDRfB2XUktKmWFkO7R6boRkpctofRmh9p5Ox5hfWiN90B22l2q8DljAbaxcIuEC1iqsVf9zVlOnFsBCb+5b/o4+JoyjDb4yzbuKty+mMHTz5r8chY0G1QgAQxO+KwRfZZnKvqFi4zN7b1sYkG5DffH64ro1zRkaP7S65c=";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnbczRcP9NlHnyeq9U4BXqQIN3nCI/D+s9ZYUuw9McbuJtGpPA5PNdabIOdgzZo0njBRFqQMdBRvqJ97KrkVOholpIBL+bJ+t8TclBmkcYIwc8VcvLTENfFHq2j1BFFNygoKgdmScWKX7AzdQSq1aac1X777UvpiBp98Uo2KB9daOqQilQnIlYJJNpZhiVVLb5uCmzTyK49BOLbnXO4dStRKzZjgjJ0Qecw0f4CH0h73IltyOIJq3AJmDpB6sKJCxmJexfWp0ax8y+fbvtrE321OPqw8i4IozLNPT2dUMLJRd7BknQiBd9HN+Xwn/UizUppK2VDD4xMMsgLXJBVnHxQIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://localhost:8080/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://localhost:8080/alipay.trade.page.pay-JAVA-UTF-8/return_url.jsp";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "E:\\";


    //↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     *
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis() + ".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}