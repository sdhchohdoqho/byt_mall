package com.yueshimall.controller;

import com.yueshimall.service.model.shoppinglistmodel;
import com.yueshimall.service.orderservice;
import com.yueshimall.service.paymentservice;
import com.yueshimall.service.shoppingservice;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/shoppingcar")
@CrossOrigin(origins = {"*"},allowCredentials = "true")
public class shoppingcar {
    @Autowired
    private com.yueshimall.service.shoppingservice shoppingservice;

    @Autowired
    private HttpServletRequest request;

    @RequestMapping("")
    public String myshoppingcar(Model model)
    {
        int customerid = (int)request.getSession().getAttribute("customerid");
        int shoppingid = shoppingservice.getshoppingid(customerid);
        List<shoppinglistmodel> shoppinglistmodels = shoppingservice.getshopping(shoppingid);
        model.addAttribute("shoppinglistmodels",shoppinglistmodels);
        return "zym/shoppingcar";
    }

    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    @ResponseBody
    public int deleteshoppinglist(@RequestParam(name = "shoppinglistid") int shoppinglistid)
    {
        shoppingservice.deleteshoppinglist(shoppinglistid);
        return shoppinglistid;
    }

    @RequestMapping(value = "/update",method = RequestMethod.POST)
    @ResponseBody
    public int addnumber(@RequestParam(name = "shoppinglistid") int shoppinglistid,@RequestParam(name = "goodnumber") int goodnumber)
    {
        shoppingservice.updategoodnumber(shoppinglistid,goodnumber);
        shoppinglistmodel shoppinglistmodel = shoppingservice.getshoppingone(shoppinglistid);
        return shoppinglistmodel.getGoodprice();
    }

    @RequestMapping(value = "/select",method = RequestMethod.POST)
    @ResponseBody
    public shoppinglistmodel selectshoppinglist(@RequestParam(name = "shoppinglistid") int shoppinglistid,@RequestParam(name = "selected") int selected)
    {
        shoppingservice.updateselected(shoppinglistid,selected);
        return shoppingservice.getshoppingone(shoppinglistid);
    }

    @RequestMapping(value = "/addtolist",method = RequestMethod.POST)
    @ResponseBody
    public void addtolist(@RequestParam(name = "goodid")int goodid,@RequestParam(name = "goodnumber")int goodnumber,@RequestParam(name = "goodprice")int goodprice,@RequestParam(name = "listinfo")String listinfo)
    {
        request.getSession().setAttribute("customerid",1);
        int customerid = (int)request.getSession().getAttribute("customerid");
        int shoppingid = shoppingservice.getshoppingid(customerid);
        shoppingservice.setshoppinglist(goodid,goodnumber,goodprice,listinfo,shoppingid);
    }
}
