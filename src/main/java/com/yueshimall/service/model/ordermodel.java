package com.yueshimall.service.model;

import java.sql.Date;

public class ordermodel {
    private int shoppingid;
    private int idorder;
    private String ordertime;

    public int getGoodid() {
        return goodid;
    }

    public void setGoodid(int goodid) {
        this.goodid = goodid;
    }

    public int getGoodnumber() {
        return goodnumber;
    }

    public void setGoodnumber(int goodnumber) {
        this.goodnumber = goodnumber;
    }

    public int getGoodprice() {
        return goodprice;
    }

    public void setGoodprice(int goodprice) {
        this.goodprice = goodprice;
    }

    private int goodid;
    private int goodnumber;
    private int goodprice;

    public int getShoppingid() {
        return shoppingid;
    }

    public void setShoppingid(int shoppingid) {
        this.shoppingid = shoppingid;
    }

    public int getIdorder() {
        return idorder;
    }

    public void setIdorder(int idorder) {
        this.idorder = idorder;
    }

    public String getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(String ordertime) {
        this.ordertime = ordertime;
    }

    private java.sql.Date time;
    private int status;

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
