package cn.lumoon.moonmall.service.impl;

import cn.lumoon.moonmall.dao.OrderDao;
import cn.lumoon.moonmall.service.OrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class OrderServiceImpl implements OrderService {

    @Resource
    private OrderDao orderDao;

}
