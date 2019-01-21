package cn.lumoon.moonmall.controller;

import cn.lumoon.moonmall.model.Goods;
import cn.lumoon.moonmall.service.GoodsService;
import cn.lumoon.moonmall.vo.SkuInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/goods")
public class GoodsController {

    @Resource
    private GoodsService goodsService;

    @RequestMapping("/{id}")
    public ModelAndView goodsView(@PathVariable String id){
        ModelAndView view = new ModelAndView("goods");
        view.addObject("id", id);
        return view;
    }

    /**
     *
     * @return
     */
    @RequestMapping("/getinfo")
    @ResponseBody
    public Goods goodsViewInfo(int id){
        Goods g = goodsService.findGoodsById(id);
        return g;
    }

    /**
     * 根据属性字符串获取价格数量
     * @param attrList
     * @return
     */
    @RequestMapping("/getSkuInfo")
    @ResponseBody
    public SkuInfo getSkuInfo(String attrList,String productId){
        SkuInfo s = goodsService.getInfoById(attrList, Integer.parseInt(productId));
        return s;
    }

    /**
     *
     * @return
     */
    @RequestMapping("/getImg")
    @ResponseBody
    public List<String> getSkuImg(int id){
        return goodsService.getImg(id);
    }

}
