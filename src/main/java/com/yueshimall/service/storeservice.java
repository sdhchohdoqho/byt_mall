package com.yueshimall.service;

import com.yueshimall.dataobject.STORE;

public interface storeservice {

    STORE getstoreById(Integer id);

    STORE createstore(STORE store);

    STORE updatestore(STORE store);

    int deletestoreById(Integer id);
}
