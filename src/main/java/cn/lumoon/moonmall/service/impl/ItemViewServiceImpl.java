package cn.lumoon.moonmall.service.impl;

import cn.lumoon.moonmall.dao.ItemViewDao;
import cn.lumoon.moonmall.model.Item;
import cn.lumoon.moonmall.service.ItemViewService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Service层实现类
 */
@Service
public class ItemViewServiceImpl implements ItemViewService {

    /**
     * DI注入
     */
    @Resource
    private ItemViewDao itemViewDao;

    /**
     * 根据关键字查询商品并返回结果集
     *
     * @param keyword
     * @param pageNo
     * @return
     */
    @Override
    public List<Item> findItemsByName(String keyword, int pageNo,int pageCount) {
        return itemViewDao.findItemsByName(keyword, pageNo,pageCount);
    }

    /**
     * 获取总数量
     *
     * @return
     */
    @Override
    public int getItemsCount() {
        return itemViewDao.getItemsCount();
    }

}
