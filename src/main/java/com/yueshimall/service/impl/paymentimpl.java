package com.yueshimall.service.impl;

import com.yueshimall.dao.PAYMENTMapper;
import com.yueshimall.dataobject.PAYMENT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.yueshimall.service.paymentservice;
import java.util.Date;

@Service
public class paymentimpl implements paymentservice{
    @Autowired
    private PAYMENTMapper paymentMapper;

    public void setpayment(int customerid,int orderid)
    {
        PAYMENT payment = new PAYMENT();
        payment.setCustomerid(customerid);
        payment.setOrderid(orderid);
        Date date = new Date();
        payment.setTime(new java.sql.Date(date.getTime()));
        payment.setStatus(0);
        paymentMapper.insert(payment);
    }
}
