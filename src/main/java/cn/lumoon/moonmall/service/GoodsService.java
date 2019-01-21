package cn.lumoon.moonmall.service;

import cn.lumoon.moonmall.model.Goods;
import cn.lumoon.moonmall.vo.SkuInfo;

import java.util.List;

/**
 *
 */
public interface GoodsService {

    /**
     * 根据id查询商品信息
     * @param id
     * @return
     */
    Goods findGoodsById(int id);

    /**
     * 根据属性列表获取价格等信息
     * @return
     */
    SkuInfo getInfoById(String attrList ,int productId);

    /**
     * 获取sku图片
     * @return
     */
    List<String> getImg(int id);
}
