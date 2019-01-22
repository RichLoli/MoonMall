package cn.lumoon.moonmall.model;

import java.sql.Date;

public class Order {
    private int id;
    private String userId;
    private Date createTime;
    private int status;
    private int addressId;
    private String orderNo;
    private String orderSn;
    private int storeId;
    private double price;
    private int logistics_free;
    private int payChannel;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getAddressId() {
        return addressId;
    }

    public void setAddressId(int addressId) {
        this.addressId = addressId;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getOrderSn() {
        return orderSn;
    }

    public void setOrderSn(String orderSn) {
        this.orderSn = orderSn;
    }

    public int getStoreId() {
        return storeId;
    }

    public void setStoreId(int storeId) {
        this.storeId = storeId;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getLogistics_free() {
        return logistics_free;
    }

    public void setLogistics_free(int logistics_free) {
        this.logistics_free = logistics_free;
    }

    public int getPayChannel() {
        return payChannel;
    }

    public void setPayChannel(int payChannel) {
        this.payChannel = payChannel;
    }
}
