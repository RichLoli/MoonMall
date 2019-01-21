package cn.lumoon.moonmall.vo;

/**
 * 商品的SKU信息封装
 */
public class SkuInfo {

    private double price;

    private double weight;

    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }
}
