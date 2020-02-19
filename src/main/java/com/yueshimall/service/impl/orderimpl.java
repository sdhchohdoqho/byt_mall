package com.yueshimall.service.impl;

import com.yueshimall.dao.ORDERGOODLISTMapper;
import com.yueshimall.dao.ORDERMapper;
import com.yueshimall.dao.SHOPPINGLISTMapper;
import com.yueshimall.dao.SHOPPINGMapper;
import com.yueshimall.dataobject.ORDER;
import com.yueshimall.dataobject.ORDERGOODLIST;
import com.yueshimall.dataobject.SHOPPING;
import com.yueshimall.dataobject.SHOPPINGLIST;
import com.yueshimall.service.model.shoppinglistmodel;
import com.yueshimall.service.orderservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Date;

import java.util.ArrayList;
import java.util.List;

@Service
public class orderimpl implements orderservice {
    @Autowired
    private ORDERMapper orderMapper;

    @Autowired
    private ORDERGOODLISTMapper ordergoodlistMapper;

    @Autowired
    private SHOPPINGLISTMapper shoppinglistMapper;

    @Autowired
    private SHOPPINGMapper shoppingMapper;

    @Override
    public List<shoppinglistmodel> getorder(int orderid) {
        List<ORDERGOODLIST> orderlists = ordergoodlistMapper.selectall(orderid);
        List<shoppinglistmodel> orderlistmodels = new ArrayList<>();
        for(ORDERGOODLIST ordergoodlist:orderlists)
        {
            shoppinglistmodel shoppinglistmodel = new shoppinglistmodel();
            shoppinglistmodel.setGoodnumber(ordergoodlist.getGoodNumber());
            shoppinglistmodel.setGoodprice(ordergoodlist.getGoodPrice());
            orderlistmodels.add(shoppinglistmodel);
        }
        return orderlistmodels;
    }

    @Override
    public int setorder(int shoppingid,int customerid)
    {
        ORDER order = new ORDER();
        order.setShoppingid(shoppingid);
        Date date = new Date();
        java.sql.Date transDate = new java.sql.Date(date.getTime());
        order.setCreateTime(transDate);
        orderMapper.insert(order);
        int orderid = order.getIdorder();
        List<SHOPPINGLIST> shoppinglists = shoppinglistMapper.selected(shoppingid,1);
        for(SHOPPINGLIST shoppinglist:shoppinglists)
        {
            ORDERGOODLIST ordergoodlist = new ORDERGOODLIST();
            ordergoodlist.setGoodid(shoppinglist.getGoodid());
            ordergoodlist.setGoodNumber(shoppinglist.getGoodnumber());
            ordergoodlist.setGoodPrice(shoppinglist.getGoodprice());
            ordergoodlist.setOrderid(orderid);
            ordergoodlistMapper.insert(ordergoodlist);
            shoppinglistMapper.deleteByPrimaryKey(shoppinglist.getShoppingGoodlistid());
        }
        return orderid;
    }

    @Override
    public int getshoppingid(int customerid) {
        SHOPPING shopping = shoppingMapper.selectByCustomerid(customerid);
        return shopping.getIdshopping();
    }
}
