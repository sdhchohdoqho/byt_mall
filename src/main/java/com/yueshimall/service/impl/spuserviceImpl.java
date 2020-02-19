package com.yueshimall.service.impl;

import com.yueshimall.dataobject.SPU_COM;
import com.yueshimall.service.model.spumodel;
import com.yueshimall.service.spuservice;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class spuserviceImpl implements spuservice {

    @Resource
    private com.yueshimall.dao.SPU_COMMapper SPU_COMMapper;
    @Override
    public spumodel getspuById(Integer spuId) {
        SPU_COM SPU_COM = SPU_COMMapper.selectByPrimaryKey(spuId);
        if(SPU_COM==null){
            return null;
        }
        return convertModelFromDataObject(SPU_COM);
    }

    @Override
    public spumodel createspu(spumodel spumodel) {
        SPU_COM SPU_COM = convertItemDoFromItemModel(spumodel);
        SPU_COMMapper.insertSelective(SPU_COM);
        spumodel.setSpuId(SPU_COM.getSpuId());
        return this.getspuById(spumodel.getSpuId());
    }


    @Override
    public spumodel updatespu(spumodel spumodel) {
        SPU_COM SPU_COM = convertItemDoFromItemModel(spumodel);
        SPU_COMMapper.updateByPrimaryKeySelective(SPU_COM);
        return this.getspuById(spumodel.getSpuId());
    }

    @Override
    public int deletespuById(Integer spuId) {
        return SPU_COMMapper.deleteByPrimaryKey(spuId);
    }

    @Override
    public List<spumodel> listspu() {
        List<SPU_COM> SPUList = SPU_COMMapper.listspu();
        //遍历List，每一个SPU转为goodmodel
        List<spumodel> spumodelList = SPUList.stream().map(SPU_COM -> {
            spumodel spumodel = this.convertModelFromDataObject(SPU_COM);
            return spumodel;
        }).collect(Collectors.toList());
        return spumodelList;
    }
    
    private spumodel convertModelFromDataObject(SPU_COM SPU_COM) {
        spumodel spumodel = new spumodel();
        BeanUtils.copyProperties(SPU_COM,spumodel);
        spumodel.setCreate_time(SPU_COM.getCreateTime().toString());
        spumodel.setUpdate_time(SPU_COM.getUpdateTime().toString());
        return spumodel;
    }
    private SPU_COM convertItemDoFromItemModel(spumodel spumodel) {
        if(spumodel==null){
            return null;
        }
        SPU_COM SPU_COM= new SPU_COM();
        BeanUtils.copyProperties(spumodel,SPU_COM);
        return SPU_COM;
    }
}
