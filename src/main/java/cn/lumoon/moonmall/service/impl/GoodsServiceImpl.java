package cn.lumoon.moonmall.service.impl;

import cn.lumoon.moonmall.dao.GoodsDao;
import cn.lumoon.moonmall.model.Goods;
import cn.lumoon.moonmall.service.GoodsService;
import cn.lumoon.moonmall.vo.SkuInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 *
 * @author loligafeo
 */
@Service
public class GoodsServiceImpl implements GoodsService {

    @Resource
    private GoodsDao goodsDao;

    /**
     * 根据id查询商品信息
     *
     * @param id
     * @return
     */
    @Override
    public Goods findGoodsById(int id) {
        return goodsDao.findGoodsById(id);
    }

    /**
     * 根据属性列表获取价格等信息
     *
     * @param attrList
     * @return
     */
    @Override
    public SkuInfo getInfoById( String attrList ,int productId) {
        return goodsDao.getInfoById(attrList, productId);
    }

    /**
     * 获取sku图片
     *
     * @param id
     * @return
     */
    @Override
    public List<String> getImg(int id) {
        return goodsDao.getImg(id);
    }
}
