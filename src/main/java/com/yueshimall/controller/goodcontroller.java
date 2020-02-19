package com.yueshimall.controller;

import com.yueshimall.service.goodservice;
import com.yueshimall.service.model.goodmodel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;

@Controller("good")
@RequestMapping("/good")
@CrossOrigin(origins = {"*"},allowCredentials = "true")
public class goodcontroller {
    @Autowired
    private goodservice goodservice;

    //商品基础信息浏览
    @RequestMapping(value = "/get",method = {RequestMethod.GET})
    @ResponseBody
    public goodmodel getgood(@RequestParam(name="id") Integer id){
        goodmodel goodmodel = goodservice.getgoodById(id);
        return goodmodel;
    }
    //创建商品基础信息
    //定义内容类型常量
    @RequestMapping(value = "/create",method = {RequestMethod.POST})
    @ResponseBody
    public goodmodel creategood(@RequestParam(name="name") String name,
                                @RequestParam(name="subtitle") String subtitle,
                                @RequestParam(name="sort") String sort,
                                @RequestParam(name="price") BigDecimal price,
                                @RequestParam(name="topprice",defaultValue = "0") BigDecimal topprice,
                                @RequestParam(name="imgUrl") String imgUrl) {

        //封装service请求用来创建商品
        //尽量让Controller层简单，让Service层负责，把服务逻辑尽可能聚合在Service层内部，实现流转处理
        //创建给service层的
        goodmodel goodmodel = new goodmodel();
        goodmodel.setName(name);
        goodmodel.setSubtitle(subtitle);
        goodmodel.setSort(sort);
        goodmodel.setPrice(price);
        goodmodel.setTopprice(topprice);
        goodmodel.setImgurl(imgUrl);

        return goodservice.creategood(goodmodel);
    }

    //更新商品基础信息
    @RequestMapping(value = "/update",method = {RequestMethod.POST})
    @ResponseBody
    public goodmodel updategood(@RequestParam(name="id") Integer id,
                                @RequestParam(name="name") String name,
                                @RequestParam(name="subtitle") String subtitle,
                                @RequestParam(name="sort") String sort,
                                @RequestParam(name="price") BigDecimal price,
                                @RequestParam(name="topprice",defaultValue = "0") BigDecimal topprice,
                                @RequestParam(name="imgUrl") String imgUrl) {

        //封装service请求用来创建商品
        //尽量让Controller层简单，让Service层负责，把服务逻辑尽可能聚合在Service层内部，实现流转处理
        //创建给service层的
        goodmodel goodmodel = goodservice.getgoodById(id);
        goodmodel.setName(name);
        goodmodel.setSubtitle(subtitle);
        goodmodel.setSort(sort);
        goodmodel.setPrice(price);
        goodmodel.setTopprice(topprice);
        goodmodel.setImgurl(imgUrl);

        return goodservice.updategood(goodmodel);
    }
    //商品基础信息删除
    @RequestMapping(value = "/delete",method = {RequestMethod.GET})
    @ResponseBody
    public int deletegood(@RequestParam(name="id") Integer id){
        return goodservice.deletegoodById(id);
    }
    //商品列表页浏览基础信息
    @RequestMapping(value = "/list",method = {RequestMethod.GET})
    @ResponseBody
    public Object listgood(){
        List<goodmodel> goodmodelList =  goodservice.listgood();
        return goodmodelList;
    }
}
