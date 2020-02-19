package com.yueshimall.service.model;

public class shoppinglistmodel {
    private int goodnumber;
    private int goodprice;
    private int shoppinglistid;
    private String goodinfo;

    public String getGoodinfo() {
        return goodinfo;
    }

    public void setGoodinfo(String goodinfo) {
        this.goodinfo = goodinfo;
    }

    public int getShoppinglistid() {
        return shoppinglistid;
    }

    public void setShoppinglistid(int shoppinglistid) {
        this.shoppinglistid = shoppinglistid;
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
}
