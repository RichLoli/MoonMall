package cn.lumoon.moonmall.model;

/**
 * 商品页面展示的实体类
 */
public class Goods {
     private String name;
     private String attrList;
    private String storeName;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAttrList() {
        return attrList;
    }

    public void setAttrList(String attrList) {
        this.attrList = attrList;
    }

    public String getStoreName() {
        return storeName;
    }

    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }
}
