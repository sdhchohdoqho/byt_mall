package com.yueshimall.service;

import com.yueshimall.service.model.goodmodel;

import java.util.List;

public interface goodservice {
    //商品基础信息浏览
    goodmodel getgoodById(Integer id);
    //创建商品
    goodmodel creategood(goodmodel goodmodel);
    //商品基础信息删除
    int deletegoodById(Integer id);
    //商品基础信息更新
    goodmodel updategood(goodmodel goodmodel);
    //商品基础信息列表
    List<goodmodel> listgood();
}
