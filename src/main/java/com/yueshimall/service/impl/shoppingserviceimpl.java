package com.yueshimall.service.impl;

import com.yueshimall.dao.SELLERGOODMapper;
import com.yueshimall.dao.SHOPPINGLISTMapper;
import com.yueshimall.dao.SHOPPINGMapper;
import com.yueshimall.dataobject.SELLERGOOD;
import com.yueshimall.dataobject.SHOPPING;
import com.yueshimall.dataobject.SHOPPINGLIST;
import com.yueshimall.service.model.shoppinglistmodel;
import com.yueshimall.service.shoppingservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class shoppingserviceimpl implements shoppingservice{

    @Autowired
    private SHOPPINGLISTMapper shoppinglistMapper;

    @Autowired
    private SHOPPINGMapper shoppingMapper;

    @Autowired
    private SELLERGOODMapper sellergoodMapper;

    @Override
    public void setshoppinglist(int goodid, int goodnumber, int goodprice, String goodinfo, int shoppingid) {
        SHOPPINGLIST shoppinglist = new SHOPPINGLIST();
        shoppinglist.setGoodid(goodid);
        shoppinglist.setGoodnumber(goodnumber);
        shoppinglist.setGoodprice(goodprice);
        shoppinglist.setSelectflag(0);
        shoppinglist.setGoodattribute(goodinfo);
        shoppinglist.setSellerid(1);//sellergoodMapper.selectByPrimaryKey(goodid).getSellerid()
        shoppinglist.setShoppingid(shoppingid);
        shoppinglistMapper.insert(shoppinglist);

    }

    @Override
    public List<shoppinglistmodel> getshopping(int shoppingid)
    {
        List<SHOPPINGLIST> shoppinglists = shoppinglistMapper.selectall(shoppingid);
        List<shoppinglistmodel> shoppinglistmodels = new ArrayList<>();
        for(SHOPPINGLIST shoppinglist:shoppinglists)
        {
            shoppinglistmodel shoppinglistmodel = new shoppinglistmodel();
            shoppinglistmodel.setGoodnumber(shoppinglist.getGoodnumber());
            shoppinglistmodel.setGoodprice(shoppinglist.getGoodprice());
            shoppinglistmodel.setShoppinglistid(shoppinglist.getShoppingGoodlistid());
            shoppinglistmodel.setGoodinfo(shoppinglist.getGoodattribute());
            shoppinglistmodels.add(shoppinglistmodel);
        }
        return shoppinglistmodels;
    }

    @Override
    public List<shoppinglistmodel> getshoppingorder(int shoppingid) {
        List<SHOPPINGLIST> shoppinglists = shoppinglistMapper.selected(shoppingid,1);
        List<shoppinglistmodel> shoppinglistmodels = new ArrayList<>();
        for(SHOPPINGLIST shoppinglist:shoppinglists)
        {
            shoppinglistmodel shoppinglistmodel = new shoppinglistmodel();
            shoppinglistmodel.setGoodnumber(shoppinglist.getGoodnumber());
            shoppinglistmodel.setGoodprice(shoppinglist.getGoodprice());
            shoppinglistmodel.setShoppinglistid(shoppinglist.getShoppingGoodlistid());
            shoppinglistmodel.setGoodinfo(shoppinglist.getGoodattribute());
            shoppinglistmodels.add(shoppinglistmodel);
        }
        return shoppinglistmodels;
    }

    @Override
    public void deleteshoppinglist(int shoppinglistid) {
        shoppinglistMapper.deleteByPrimaryKey(shoppinglistid);
    }

    @Override
    public void updategoodnumber(int shoppinglistid, int goodnumber) {
        SHOPPINGLIST shoppinglist = shoppinglistMapper.selectByPrimaryKey(shoppinglistid);
        shoppinglist.setGoodnumber(goodnumber);
        shoppinglistMapper.updateByPrimaryKey(shoppinglist);
    }

    @Override
    public shoppinglistmodel getshoppingone(int shoppinglistid) {
        SHOPPINGLIST shoppinglist = shoppinglistMapper.selectByPrimaryKey(shoppinglistid);
        shoppinglistmodel shoppinglistmodel = new shoppinglistmodel();
        shoppinglistmodel.setGoodnumber(shoppinglist.getGoodnumber());
        shoppinglistmodel.setGoodprice(shoppinglist.getGoodprice());
        shoppinglistmodel.setShoppinglistid(shoppinglist.getShoppingGoodlistid());
        return shoppinglistmodel;
    }

    @Override
    public void updateselected(int shoppinglistid, int selected) {
        SHOPPINGLIST shoppinglist = shoppinglistMapper.selectByPrimaryKey(shoppinglistid);
        shoppinglist.setSelectflag(selected);
        shoppinglistMapper.updateByPrimaryKey(shoppinglist);
    }

    @Override
    public int getshoppingid(int customerid) {
        return shoppingMapper.selectByCustomerid(customerid).getIdshopping();
    }
}
