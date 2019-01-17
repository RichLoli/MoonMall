package cn.lumoon.moonmall.service;

import cn.lumoon.moonmall.model.Item;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * service层
 */
public interface ItemViewService {

    /**
     * 根据关键字查询商品并返回结果集
     * @param keyword
     * @return
     */
    public List<Item> findItemsByName(String keyword,int pageNo);
}
