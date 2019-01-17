package cn.lumoon.moonmall.service;

import cn.lumoon.moonmall.model.User;

/**
 * 登录的service层
 */
public interface LoginService {
    /**
     * 根据名称查询用户
     */
    User findUserByName(String username);

    /**
     * 注册用户
     * @param user
     * @return
     */
    boolean addUser(User user);

    /**
     * 登录
     * @return
     */
    boolean login(User user);
}
