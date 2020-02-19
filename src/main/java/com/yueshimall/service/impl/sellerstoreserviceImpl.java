package com.yueshimall.service.impl;

import com.yueshimall.dataobject.SELLERSTORE;
import com.yueshimall.service.sellerstoreservice;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class sellerstoreserviceImpl implements sellerstoreservice {
    @Resource
    private com.yueshimall.dao.SELLERSTOREMapper SELLERSTOREMapper;
    @Override
    public SELLERSTORE getsellerstoreById(Integer id) {
        SELLERSTORE SELLERSTORE = SELLERSTOREMapper.selectByPrimaryKey(id);
        return SELLERSTORE;
    }

    @Override
    public SELLERSTORE createsellerstore(SELLERSTORE sellerstore) {
        SELLERSTOREMapper.insertSelective(sellerstore);
        return this.getsellerstoreById(sellerstore.getId());
    }

    @Override
    public SELLERSTORE updatesellerstore(SELLERSTORE sellerstore) {
        SELLERSTOREMapper.updateByPrimaryKeySelective(sellerstore);
        return this.getsellerstoreById(sellerstore.getId());
    }

    @Override
    public int deletesellerstoreById(Integer id) {
        return SELLERSTOREMapper.deleteByPrimaryKey(id);
    }
}
