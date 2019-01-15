package cn.lumoon.moonmall.utils;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

/**
 * Spring工具类
 */
public class SpringUtil {

    /**
     * Spring上下文
     */
    public static ApplicationContext context;

    static {
        //初始化
        context = new FileSystemXmlApplicationContext("D:\\Code\\MoonShopProject\\Code\\MM\\src\\main\\webapp\\WEB-INF\\applicationContext.xml");
    }

    public static ApplicationContext getContext() {
        return context;
    }

}
