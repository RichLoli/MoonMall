package cn.lumoon.moonmall.service;

import cn.lumoon.moonmall.model.CartListItem;
import cn.lumoon.moonmall.vo.CartPage;

import java.util.List;

/**
 *
 * @author loligafeo
 */
public interface CartService {

    /**
     * 获取购物车列表，
     * @return
     */
    List<CartListItem> getAll(String id);


    /**
     * 添加一条商品到购物车
     * @return
     */
    boolean addItem(int skuId,String userId,int count);

    /**
     * 查询购物车中是否重复商品
     * @param skuId
     * @param userId
     * @return
     */
    Integer findDuplicateItem(int skuId,String userId);

    /**
     * 更新购物车表数量
     * @param id
     * @return
     */
    boolean updateCartItem(int id);

    /**
     * 根据skuid查找商品，用于加入购物车成功页面的展示
     * @return
     */
    CartPage findItemBySkuId(int skuId);

    /**
     * cookie保存的sku值 查询商品
     *
     * @return
     */
    CartListItem getInfoBySku(int skuId);

    /**
     * 删除购物车商品
     * @param cartId
     * @return
     */
    int delCartItem(int cartId);
}
