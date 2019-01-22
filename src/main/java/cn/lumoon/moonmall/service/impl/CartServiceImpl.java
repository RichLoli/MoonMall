package cn.lumoon.moonmall.service.impl;

import cn.lumoon.moonmall.dao.CartDao;
import cn.lumoon.moonmall.model.CartListItem;
import cn.lumoon.moonmall.vo.CartPage;
import cn.lumoon.moonmall.service.CartService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 *
 * @author loligafeo
 */
@Service
public class CartServiceImpl implements CartService {

    @Resource
    private CartDao cartDao;

    /**
     * 获取购物车列表，
     *
     * @param id
     * @return
     */
    @Override
    public List<CartListItem> getAll(String id) {
        return cartDao.getAll(id);
    }

    /**
     * 添加一条商品到购物车
     *
     * @param skuId
     * @param userId
     * @return
     */
    @Override
    public boolean addItem(int skuId, String userId,int count) {
        return cartDao.addItem(skuId, userId,count) > 0;
    }

    /**
     * 查询购物车中是否重复商品
     *
     * @param skuId
     * @param userId
     * @return
     */
    @Override
    public Integer findDuplicateItem(int skuId, String userId) {
        return cartDao.findDuplicateItem(skuId, userId);
    }

    /**
     * 更新购物车表数量
     *
     * @param id
     * @return
     */
    @Override
    public boolean updateCartItem(int id) {
        return cartDao.updateCartItem(id) > 0;
    }

    /**
     * 根据skuid查找商品，用于加入购物车成功页面的展示
     *
     * @return
     */
    @Override
    public CartPage findItemBySkuId(int skuId) {
        return cartDao.findItemBySkuId(skuId);
    }

    /**
     * cookie保存的sku值 查询商品
     *
     * @return
     */
    @Override
    public CartListItem getInfoBySku(int skuId) {
        return cartDao.getInfoBySku(skuId);
    }

    /**
     * 删除购物车商品
     *
     * @param cartId
     * @return
     */
    @Override
    public int delCartItem(int cartId) {
        return cartDao.delCartItem(cartId);
    }


}
