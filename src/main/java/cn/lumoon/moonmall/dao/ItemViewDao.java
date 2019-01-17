package cn.lumoon.moonmall.dao;

import cn.lumoon.moonmall.model.Item;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 对商品视图的操作
 */
public interface ItemViewDao {

    /**
     * 根据关键字查询商品并返回结果集
     * @param keyword
     * @param pageNo 页码
     * @return
     */
    public List<Item> findItemsByName(@Param("keyword") String keyword, @Param("pageNo") int pageNo);
}
