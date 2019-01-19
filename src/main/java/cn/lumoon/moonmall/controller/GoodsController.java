package cn.lumoon.moonmall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/goods")
public class GoodsController {

    @RequestMapping("/{id}")
    public ModelAndView goodsView(@PathVariable String id){
        ModelAndView view = new ModelAndView("goods");
        view.addObject("id", id);
        return view;
    }

}
