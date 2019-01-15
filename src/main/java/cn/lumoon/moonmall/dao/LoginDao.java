package cn.lumoon.moonmall.dao;

import cn.lumoon.moonmall.model.User;

/**
 * 登录的dao层操作
 */
public interface LoginDao {

    /**
     * 根据名称查询用户
     */
    User findUserByName(String username);

}
