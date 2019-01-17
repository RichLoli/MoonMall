package cn.lumoon.moonmall.model;

/**
 * 对应视图的实体类，用来表示搜索内容下的商品
 */
public class Item {
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
    private String picture_url;
    /**
     * 关键字
     */
    private String keyword;
    /**
     * 价格
     */
    private double price;

    @Override
    public String toString() {
        return "Item{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", status=" + status +
                ", picture_url='" + picture_url + '\'' +
                ", keyword='" + keyword + '\'' +
                ", price=" + price +
                '}';
    }

    public Item() {
    }

    public Item(int id, String name, int status, String picture_url, String keyword, double price) {
        this.id = id;
        this.name = name;
        this.status = status;
        this.picture_url = picture_url;
        this.keyword = keyword;
        this.price = price;
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

    public String getPicture_url() {
        return picture_url;
    }

    public void setPicture_url(String picture_url) {
        this.picture_url = picture_url;
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
}
