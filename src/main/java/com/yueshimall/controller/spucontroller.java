package com.yueshimall.controller;

import com.yueshimall.service.model.spumodel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller("spu")
@RequestMapping("/spu")
@CrossOrigin(origins = {"*"},allowCredentials = "true")
public class spucontroller {
    @Autowired
    private com.yueshimall.service.spuservice spuservice;

    //商品基础信息浏览
    @RequestMapping(value = "/get",method = {RequestMethod.GET})
    @ResponseBody
    public spumodel getspu(@RequestParam(name="spu_id") Integer spu_id){
        spumodel spumodel = spuservice.getspuById(spu_id);
        return spumodel;
    }
    @RequestMapping(value = "/create",method = {RequestMethod.POST})
    @ResponseBody
    public spumodel createspu(@RequestParam(name="spu_id") Integer spu_id,
                              @RequestParam(name="salas",required=false) Integer salas,
                              @RequestParam(name="stock",required=false) Integer stock,
                              @RequestParam(name="attribute1",required=false) String attribute1,
                              @RequestParam(name="attribute2",required=false) String attribute2,
                              @RequestParam(name="attribute3",required=false) String attribute3,
                              @RequestParam(name="attribute4",required=false) String attribute4,
                              @RequestParam(name="description",required=false) String description,
                              @RequestParam(name="photolist",required=false) String photolist,
                              @RequestParam(name="videolist",required=false) String videolist,
                              @RequestParam(name="reservelist",required=false) String reservelist) {
        spumodel spumodel = new spumodel();
        spumodel.setSpuId(spu_id);
        spumodel.setSalas(salas);
        spumodel.setStock(stock);
        spumodel.setAttribute1(attribute1);
        spumodel.setAttribute2(attribute2);
        spumodel.setAttribute3(attribute3);
        spumodel.setAttribute4(attribute4);
        spumodel.setDescription(description);
        spumodel.setPhotolist(photolist);
        spumodel.setVideolist(videolist);
        spumodel.setReservelist(reservelist);
        return spuservice.createspu(spumodel);
    }

    //更新商品基础信息
    @RequestMapping(value = "/update",method = {RequestMethod.POST})
    @ResponseBody
    public spumodel updatespu(@RequestParam(name="spu_id") Integer spu_id,
                              @RequestParam(name="salas",required=false) Integer salas,
                              @RequestParam(name="stock",required=false) Integer stock,
                              @RequestParam(name="attribute1",required=false) String attribute1,
                              @RequestParam(name="attribute2",required=false) String attribute2,
                              @RequestParam(name="attribute3",required=false) String attribute3,
                              @RequestParam(name="attribute4",required=false) String attribute4,
                              @RequestParam(name="description",required=false) String description,
                              @RequestParam(name="photolist",required=false) String photolist,
                              @RequestParam(name="videolist",required=false) String videolist,
                              @RequestParam(name="reservelist",required=false) String reservelist) {

        spumodel spumodel = spuservice.getspuById(spu_id);
        spumodel.setSalas(salas);
        spumodel.setStock(stock);
        spumodel.setAttribute1(attribute1);
        spumodel.setAttribute2(attribute2);
        spumodel.setAttribute3(attribute3);
        spumodel.setAttribute4(attribute4);
        spumodel.setDescription(description);
        spumodel.setPhotolist(photolist);
        spumodel.setVideolist(videolist);
        spumodel.setReservelist(reservelist);
        return spuservice.updatespu(spumodel);
    }

    @RequestMapping(value = "/delete",method = {RequestMethod.GET})
    @ResponseBody
    public int deletespu(@RequestParam(name="spu_id") Integer spu_id){
        return spuservice.deletespuById(spu_id);
    }

    @RequestMapping(value = "/list",method = {RequestMethod.GET})
    @ResponseBody
    public Object listspu(){
        List<spumodel> spumodelList =  spuservice.listspu();
        return spumodelList;
    }
}

