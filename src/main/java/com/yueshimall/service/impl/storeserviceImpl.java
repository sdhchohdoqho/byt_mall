package com.yueshimall.service.impl;

import com.yueshimall.dataobject.STORE;
import com.yueshimall.service.storeservice;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class storeserviceImpl implements storeservice {
    @Resource
    private com.yueshimall.dao.STOREMapper STOREMapper;
    @Override
    public STORE getstoreById(Integer id) {
        STORE STORE = STOREMapper.selectByPrimaryKey(id);
        return STORE;
    }

    @Override
    public STORE createstore(STORE store) {
        STOREMapper.insertSelective(store);
        return this.getstoreById(store.getId());
    }

    @Override
    public STORE updatestore(STORE store) {
        STOREMapper.updateByPrimaryKeySelective(store);
        return this.getstoreById(store.getId());
    }

    @Override
    public int deletestoreById(Integer id) {
        return STOREMapper.deleteByPrimaryKey(id);
    }


}
