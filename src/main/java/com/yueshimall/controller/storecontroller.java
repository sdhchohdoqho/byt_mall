package com.yueshimall.controller;

import com.yueshimall.dataobject.STORE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller("store")
@RequestMapping("/store")
@CrossOrigin(origins = {"*"},allowCredentials = "true")
public class storecontroller {
    @Autowired
    private com.yueshimall.service.storeservice storeservice;

    @RequestMapping(value = "/get",method = {RequestMethod.GET})
    @ResponseBody
    public STORE getstore(@RequestParam(name="id") Integer id){
        STORE STORE = storeservice.getstoreById(id);
        return STORE;
    }
    @RequestMapping(value = "/create",method = {RequestMethod.POST})
    @ResponseBody
    public STORE createsku(@RequestParam(name="userid") Integer userid,
                         @RequestParam(name="storename",required=false) String storename,
                         @RequestParam(name="logo",required=false) String logo,
                           @RequestParam(name="describe",required=false) String describe,
                           @RequestParam(name="goodidlist",required=false) String goodidlist){
        STORE STORE = new STORE();
        STORE.setUserid(userid);
        STORE.setStorename(storename);
        STORE.setLogo(logo);
        STORE.setDescribe(describe);
        STORE.setGoodidlist(goodidlist);
        return storeservice.createstore(STORE);
    }
    @RequestMapping(value = "/update",method = {RequestMethod.POST})
    @ResponseBody
    public STORE createsku(@RequestParam(name="id") Integer id,
                           @RequestParam(name="userid") Integer userid,
                           @RequestParam(name="storename",required=false) String storename,
                           @RequestParam(name="logo",required=false) String logo,
                           @RequestParam(name="describe",required=false) String describe,
                           @RequestParam(name="goodidlist",required=false) String goodidlist){
        STORE STORE = storeservice.getstoreById(id);
        STORE.setUserid(userid);
        STORE.setStorename(storename);
        STORE.setLogo(logo);
        STORE.setDescribe(describe);
        STORE.setGoodidlist(goodidlist);
        return storeservice.updatestore(STORE);
    }
    @RequestMapping(value = "/delete",method = {RequestMethod.GET})
    @ResponseBody
    public int deletestore(@RequestParam(name="id") Integer id){
       return  storeservice.deletestoreById(id);
    }
}
