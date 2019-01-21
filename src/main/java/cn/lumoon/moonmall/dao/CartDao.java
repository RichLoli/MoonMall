package cn.lumoon.moonmall.dao;

import cn.lumoon.moonmall.model.CartListItem;
import cn.lumoon.moonmall.vo.CartPage;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 对购物车列表的dao层操作
 */
public interface CartDao {

    /**
     * 获取购物车列表，
     * @return
     */
    List<CartListItem> getAll(String id);

    /**
     * 添加一条商品到购物车
     * @return
     */
    int addItem(@Param("skuId") int skuId, @Param("skuId") String userId);

    /**
     * 查询购物车中是否重复商品 找到则返回商品id
     * @param skuId
     * @param userId
     * @return
     */
    Integer findDuplicateItem(@Param("skuId") int skuId,@Param("skuId") String userId);

    /**
     * 更新购物车表数量
     * @param id
     * @return
     */
    int updateCartItem(int id);

    /**
     * 根据skuid查找商品，用于加入购物车成功页面的展示
     * @return
     */
    CartPage findItemBySkuId(int skuId);

}