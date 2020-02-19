package com.yueshimall.controller;

import com.yueshimall.service.model.shoppinglistmodel;
import com.yueshimall.service.model.ordermodel;
import com.yueshimall.service.shoppingservice;
import com.yueshimall.service.orderservice;
import com.yueshimall.service.paymentservice;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class order {
    @Autowired
    private orderservice orderservice;

    @Autowired
    private paymentservice paymentservice;

    @Autowired
    private shoppingservice shoppingservice;

    @Autowired
    private HttpServletRequest request;

    @RequestMapping(value = "/order-payment")
    public String getorder(Model model)
    {
        int customerid = (int)request.getSession().getAttribute("customerid");
        int shoppingid = orderservice.getshoppingid(customerid);
        List<shoppinglistmodel> shoppinglistmodels = shoppingservice.getshoppingorder(shoppingid);
        model.addAttribute("ordermodels",shoppinglistmodels);
        return "zym/order-payment";
    }

    @RequestMapping("/confirm")
    public String confirm()
    {
        int customerid = (int)request.getSession().getAttribute("customerid");
        int shoppingid = orderservice.getshoppingid(customerid);
        int orderid = orderservice.setorder(shoppingid,customerid);
        paymentservice.setpayment(customerid,orderid);
        return "zym/payment-confirm";
    }
}
