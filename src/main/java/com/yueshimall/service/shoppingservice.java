package com.yueshimall.service;

import com.yueshimall.service.model.shoppinglistmodel;

import java.util.List;

public interface shoppingservice {
    void setshoppinglist(int goodid,int goodnumber,int goodprice,String goodinfo,int shoppingid);
    List<shoppinglistmodel> getshopping(int shoppingid);
    List<shoppinglistmodel> getshoppingorder(int shoppingid);
    void deleteshoppinglist(int shoppinglistid);
    void updategoodnumber(int shoppinglistid,int goodnumber);
    shoppinglistmodel getshoppingone(int shoppinglistid);
    void updateselected(int shoppinglistid,int selected);
    int getshoppingid(int customerid);
}
