package cn.lumoon.moonmall.dao;

import cn.lumoon.moonmall.model.Goods;
import cn.lumoon.moonmall.vo.SkuInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 对商品页面展示数据的dao层操作
 * @author loligafeo
 */
public interface GoodsDao {

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
    SkuInfo getInfoById(@Param("attrList") String attrList ,@Param("id")int productId);

    /**
     * 获取sku图片
     * @return
     */
    List<String> getImg(int id);

}
