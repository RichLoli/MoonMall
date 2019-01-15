package cn.lumoon.moonmall.utils;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/**
 * 设置定时任务的工具类
 * @author loligafeo
 */
public class TimeTaskUtil {

    /**
     * 周期性线程池
     */
    private static ScheduledExecutorService executorService;

    /**
     * 初始化尺子
     * @param count
     */
    public static void initialPool(int count){
        executorService = Executors.newScheduledThreadPool(count);
    }

    /**
     * 添加新周期任务
     * @param runnable 周期执行的任务
     * @param initalDelay 初始延时时间
     * @param period 间隔时间
     */
    public void createMission(Runnable runnable,int initalDelay,int period) {
        if (executorService == null) {
            initialPool(5);
        }
        executorService.scheduleAtFixedRate(runnable, 0,10, TimeUnit.MINUTES);
        System.out.println(Thread.currentThread().getName()+"主线程");
    }

    /**
     * 关闭池子
     */
    public void shutdown(){
        executorService.shutdownNow();
    }

}
