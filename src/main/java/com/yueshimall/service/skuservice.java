package com.yueshimall.service;

import com.yueshimall.dataobject.SKU;

import java.util.List;

public interface skuservice {
    SKU getskuById(Integer sku_id);

    SKU createsku(SKU sku);

    SKU updatesku(SKU sku);

    int deleteskuById(Integer sku_id);

    List<SKU> listsku(Integer spu_id);
}
