package com.yueshimall.controller;

import com.yueshimall.dataobject.SELLERSTORE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller("sellerstore")
@RequestMapping("/sellerstore")
@CrossOrigin(origins = {"*"},allowCredentials = "true")
public class sellerstorecontroller {
    @Autowired
    private com.yueshimall.service.sellerstoreservice sellerstoreservice;

    @RequestMapping(value = "/get",method = {RequestMethod.GET})
    @ResponseBody
    public SELLERSTORE getstore(@RequestParam(name="id") Integer id){
        SELLERSTORE SELLERSTORE = sellerstoreservice.getsellerstoreById(id);
        return SELLERSTORE;
    }
    @RequestMapping(value = "/create",method = {RequestMethod.POST})
    @ResponseBody
    public SELLERSTORE createsku(@RequestParam(name="userid") Integer userid,
                           @RequestParam(name="storeidlist",required=false) String storeidlist){
        SELLERSTORE SELLERSTORE = new SELLERSTORE();
        SELLERSTORE.setUserid(userid);
        SELLERSTORE.setStoreidlist(storeidlist);
        return sellerstoreservice.createsellerstore(SELLERSTORE);
    }
    @RequestMapping(value = "/update",method = {RequestMethod.POST})
    @ResponseBody
    public SELLERSTORE createsku(@RequestParam(name="id") Integer id,
                           @RequestParam(name="userid") Integer userid,
                           @RequestParam(name="storeidlist",required=false) String storeidlist){
        SELLERSTORE SELLERSTORE = sellerstoreservice.getsellerstoreById(id);
        SELLERSTORE.setUserid(userid);
        SELLERSTORE.setStoreidlist(storeidlist);
        return sellerstoreservice.updatesellerstore(SELLERSTORE);
    }
    @RequestMapping(value = "/delete",method = {RequestMethod.GET})
    @ResponseBody
    public int deletestore(@RequestParam(name="id") Integer id){
        return  sellerstoreservice.deletesellerstoreById(id);
    }
}
