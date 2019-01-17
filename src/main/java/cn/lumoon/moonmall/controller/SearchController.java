package cn.lumoon.moonmall.controller;

import cn.lumoon.moonmall.model.Item;
import cn.lumoon.moonmall.service.ItemViewService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * 搜索处理
 */
@Controller
public class SearchController {

    @Resource
    private ItemViewService itemViewService;

    /**
     * 搜索
     * @param keyword
     */
    @RequestMapping("/Search")
    public ModelAndView search(String keyword,String page){
        List<Item> items = itemViewService.findItemsByName(keyword, Integer.parseInt(page));
        ModelAndView view = new ModelAndView("search");
        view.addObject("items", items);
        return view;
    }

}
