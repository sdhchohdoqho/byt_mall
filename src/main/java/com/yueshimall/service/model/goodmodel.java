package com.yueshimall.service.model;

import java.math.BigDecimal;

public class goodmodel{
    //basic info
    public Integer id;
    public String name;
    public String subtitle;
    public String sort;
    public BigDecimal price;
    public BigDecimal topprice;//价格区间最高 默认为空
    public String imgurl;//主图

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSubtitle() {
        return subtitle;
    }

    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getTopprice() {
        return topprice;
    }

    public void setTopprice(BigDecimal topprice) {
        this.topprice = topprice;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }
}
