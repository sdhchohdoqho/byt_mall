package com.yueshimall.service;


import com.yueshimall.service.model.spumodel;

import java.util.List;

public interface spuservice {

    spumodel getspuById(Integer spuId);

    spumodel createspu(spumodel spumodel);

    spumodel updatespu(spumodel spumodel);

    int deletespuById(Integer spuId);

    List<spumodel> listspu();
}
