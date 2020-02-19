package com.yueshimall.service;

import com.yueshimall.dataobject.SELLERSTORE;

public interface sellerstoreservice {
    SELLERSTORE getsellerstoreById(Integer id);

    SELLERSTORE createsellerstore(SELLERSTORE sellerstore);

    SELLERSTORE updatesellerstore(SELLERSTORE sellerstore);

    int deletesellerstoreById(Integer id);
}
