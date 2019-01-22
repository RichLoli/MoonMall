package cn.lumoon.moonmall.controller;

import cn.lumoon.moonmall.model.Order;
import cn.lumoon.moonmall.service.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.UUID;

@Controller
@RequestMapping("/order")
public class OrderController {

    @Resource
    private OrderService orderService;

    @RequestMapping("/add")
    public ModelAndView createOrder(String summary){
        ModelAndView view = new ModelAndView("alipay.trade.page.pay");
        view.addObject("WIDout_trade_no", UUID.randomUUID().toString());
        view.addObject("WIDtotal_amount", summary);
        view.addObject("WIDsubject", "购买商品");
        return view;
    }




}
