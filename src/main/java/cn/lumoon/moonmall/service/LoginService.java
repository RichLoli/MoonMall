package cn.lumoon.moonmall.service;

import cn.lumoon.moonmall.model.User;

public interface LoginService {
    /**
     * 根据名称查询用户
     */
    User findUserByName(String username);
}
