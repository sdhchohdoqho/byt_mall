package com.yueshimall.service.impl;

import com.yueshimall.dataobject.SPU;
import com.yueshimall.service.goodservice;
import com.yueshimall.service.model.goodmodel;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class goodserviceImpl implements goodservice {
    @Resource
    private com.yueshimall.dao.SPUMapper SPUMapper;
    //商品详情浏览
    @Override
    public goodmodel getgoodById(Integer id) {
        SPU spu = SPUMapper.selectByPrimaryKey(id);
        if(spu==null){
            return null;
        }
        return convertModelFromDataObject(spu);
    }


    //创建商品基础信息，需要事务，在方法上添加
    @Override
    @Transactional
    public goodmodel creategood(goodmodel goodmodel) {
        SPU SPU = convertItemDoFromItemModel(goodmodel);
        SPUMapper.insertSelective(SPU);
        goodmodel.setId(SPU.getId());
        return this.getgoodById(goodmodel.getId());
    }

    @Override
    @Transactional
    public int deletegoodById(Integer id) {
        return SPUMapper.deleteByPrimaryKey(id);
    }

    @Override
    public goodmodel updategood(goodmodel goodmodel) {
        SPU SPU = convertItemDoFromItemModel(goodmodel);
        SPUMapper.updateByPrimaryKeySelective(SPU);
        return this.getgoodById(goodmodel.getId());
    }

    @Override
    public List<goodmodel> listgood() {
        List<SPU> SPUList = SPUMapper.listgood();
        //遍历List，每一个SPU转为goodmodel
        List<goodmodel> goodmodelList = SPUList.stream().map(SPU -> {
            goodmodel goodmodel = this.convertModelFromDataObject(SPU);
            return goodmodel;
            //转为List集合
        }).collect(Collectors.toList());
        return goodmodelList;
    }


    private goodmodel convertModelFromDataObject(SPU spu) {
        goodmodel goodmodel = new goodmodel();
        BeanUtils.copyProperties(spu,goodmodel);
        goodmodel.setPrice(new BigDecimal(spu.getPrice()));
        goodmodel.setTopprice(new BigDecimal(spu.getTopprice()));
        return goodmodel;
    }
    //将goodmodel转为SPU的转换方法
    private SPU convertItemDoFromItemModel(goodmodel goodmodel){

        if(goodmodel==null){
            return null;
        }
        SPU SPU = new SPU();
        //UserModel中的price是BigDecimal类型而不用Double，Double在java内部传到前端，会有精度问题，不精确
        //有可能1.9，显示时是1.999999，为此在Service层，将price定为比较精确的BigDecimal类型
        //但是在拷贝到Dao层时，存入的是Double类型，拷贝方法对应类型不匹配的属性，不会进行拷贝。
        //在拷贝完，将BigDecimal转为Double，再set进去
        BeanUtils.copyProperties(goodmodel,SPU);
        //转为double
        SPU.setPrice(goodmodel.getPrice().doubleValue());
        SPU.setTopprice(goodmodel.getTopprice().doubleValue());
        return SPU;
    }
}
