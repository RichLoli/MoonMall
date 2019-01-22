package cn.lumoon.moonmall.model;

import java.io.Serializable;

/**
 * 对应视图的实体类，用来表示搜索内容下的商品
 */
public class Item implements Serializable {
    /**
     * id
     */
    private int id;
    /**
     * 商品名称
     */
    private String name;
    /**
     * 状态
     */
    private int status;
    /**
     * 图片地址
     */
    private String pictureUrl;
    /**
     * 关键字
     */
    private String keyword;
    /**
     * 价格
     */
    private double price;
    /**
     * 店铺名称
     */
    private String storeName;

    public Item() {
    }

    public Item(int id, String name, int status, String pictureUrl, String keyword, double price, String storeName) {
        this.id = id;
        this.name = name;
        this.status = status;
        this.pictureUrl = pictureUrl;
        this.keyword = keyword;
        this.price = price;
        this.storeName = storeName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getPictureUrl() {
        return pictureUrl;
    }

    public void setPictureUrl(String pictureUrl) {
        this.pictureUrl = pictureUrl;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getStoreName() {
        return storeName;
    }

    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }
}
