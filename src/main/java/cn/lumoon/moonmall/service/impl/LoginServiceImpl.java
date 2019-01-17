package cn.lumoon.moonmall.service.impl;

import cn.lumoon.moonmall.dao.LoginDao;
import cn.lumoon.moonmall.model.User;
import cn.lumoon.moonmall.service.LoginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class LoginServiceImpl implements LoginService {

    @Resource
    private LoginDao loginDao;

    /**
     * 根据名称查询用户
     *
     * @param username
     */
    @Override
    public User findUserByName(String username) {
        return loginDao.findUserByName(username);
    }

    /**
     * 注册用户
     *
     * @param user
     * @return
     */
    @Override
    public boolean addUser(User user) {
        return loginDao.addUser(user) > 0;
    }

    /**
     * 登录
     *
     * @param user
     * @return
     */
    @Override
    public boolean login(User user) {
        return loginDao.login(user) > 0;
    }
}
