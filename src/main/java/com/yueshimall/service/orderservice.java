package com.yueshimall.service;
import com.yueshimall.service.model.shoppinglistmodel;

import java.util.List;

public interface orderservice {
    List<shoppinglistmodel> getorder(int shoppingid);
    int setorder(int shoppingid,int customerid);
    int getshoppingid(int customerid);
}
