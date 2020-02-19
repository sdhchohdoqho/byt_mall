package com.yueshimall.service.impl;

import com.yueshimall.dataobject.SKU;
import com.yueshimall.service.skuservice;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class skuserviceImpl implements skuservice {
    @Resource
    private com.yueshimall.dao.SKUMapper SKUMapper;
    @Override
    public SKU getskuById(Integer sku_id) {
        SKU SKU = SKUMapper.selectByPrimaryKey(sku_id);
        if(SKU==null){
            return null;
        }
        return SKU;
    }

    @Override
    public SKU createsku(SKU SKU) {
        SKUMapper.insertSelective(SKU);
        return this.getskuById(SKU.getId());
    }

    @Override
    public SKU updatesku(SKU SKU) {
        SKUMapper.updateByPrimaryKeySelective(SKU);
        return this.getskuById(SKU.getId());
    }

    @Override
    public int deleteskuById(Integer sku_id) {
        return SKUMapper.deleteByPrimaryKey(sku_id);
    }

    @Override
    public List<SKU> listsku(Integer spu_id) {
        List<SKU> SKUList = SKUMapper.listsku(spu_id);
        return SKUList;
    }

}
