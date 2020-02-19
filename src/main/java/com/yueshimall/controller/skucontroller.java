package com.yueshimall.controller;

import com.yueshimall.dataobject.SKU;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;

@Controller("sku")
@RequestMapping("/sku")
@CrossOrigin(origins = {"*"},allowCredentials = "true")
public class skucontroller {
    @Autowired
    private com.yueshimall.service.skuservice skuservice;

    @RequestMapping(value = "/get",method = {RequestMethod.GET})
    @ResponseBody
    public SKU getsku(@RequestParam(name="sku_id") Integer sku_id){
        SKU SKU = skuservice.getskuById(sku_id);
        return SKU;
    }
    @RequestMapping(value = "/create",method = {RequestMethod.POST})
    @ResponseBody
    public SKU createsku(@RequestParam(name="spu_id") Integer spu_id,
                         @RequestParam(name="sku_id") Integer sku_id,
                              @RequestParam(name="salas",required=false) Integer salas,
                              @RequestParam(name="stock",required=false) Integer stock,
                              @RequestParam(name="price") BigDecimal price,
                              @RequestParam(name="attribute1",required=false) String attribute1,
                              @RequestParam(name="attribute2",required=false) String attribute2,
                              @RequestParam(name="attribute3",required=false) String attribute3,
                              @RequestParam(name="attribute4",required=false) String attribute4){
        SKU SKU =new SKU();
        SKU.setId(sku_id);
        SKU.setSpuId(spu_id);
        SKU.setPrice(price);
        SKU.setSales(salas);
        SKU.setStock(stock);
        SKU.setAttributes1(attribute1);
        SKU.setAttributes2(attribute2);
        SKU.setAttributes3(attribute3);
        SKU.setAttributes4(attribute4);
        return skuservice.createsku(SKU);
    }
    @RequestMapping(value = "/update",method = {RequestMethod.POST})
    @ResponseBody
    public SKU updatesku(@RequestParam(name="sku_id") Integer sku_id,
                         @RequestParam(name="spu_id") Integer spu_id,
                         @RequestParam(name="salas",required=false) Integer salas,
                         @RequestParam(name="stock",required=false) Integer stock,
                         @RequestParam(name="price") BigDecimal price,
                         @RequestParam(name="attribute1",required=false) String attribute1,
                         @RequestParam(name="attribute2",required=false) String attribute2,
                         @RequestParam(name="attribute3",required=false) String attribute3,
                         @RequestParam(name="attribute4",required=false) String attribute4){
        SKU SKU = skuservice.getskuById(sku_id);
        SKU.setId(sku_id);
        SKU.setSpuId(spu_id);
        SKU.setPrice(price);
        SKU.setSales(salas);
        SKU.setStock(stock);
        SKU.setAttributes1(attribute1);
        SKU.setAttributes2(attribute2);
        SKU.setAttributes3(attribute3);
        SKU.setAttributes4(attribute4);
        return skuservice.updatesku(SKU);
    }
    @RequestMapping(value = "/delete",method = {RequestMethod.GET})
    @ResponseBody
    public int deletespu(@RequestParam(name="sku_id") Integer sku_id){
        return skuservice.deleteskuById(sku_id);
    }

    @RequestMapping(value = "/list",method = {RequestMethod.GET})
    @ResponseBody
    public Object listspu(@RequestParam(name="spu_id") Integer spu_id){
        List<SKU> SKUList =  skuservice.listsku(spu_id);
        return SKUList;
    }


}
