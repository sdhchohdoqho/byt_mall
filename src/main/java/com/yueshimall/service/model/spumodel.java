package com.yueshimall.service.model;

public class spumodel {
    public Integer spuId;
    public Integer salas;
    public Integer stock;
    public String attribute1;
    public String attribute2;//默认为null 可以由自定义，当前端选择后ajax更新具体price
    public String attribute3;
    public String attribute4;
    public String description;
    public String photolist;
    public String videolist;
    public String reservelist;
    //time
    public String create_time;
    public String update_time;
  /*  public SimpleDateFormat create_time = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss");
    public SimpleDateFormat update_time = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss");*/
    //////////////////////////


    public Integer getSpuId() {
        return spuId;
    }

    public void setSpuId(Integer spuId) {
        this.spuId = spuId;
    }

    public Integer getSalas() {
        return salas;
    }

    public void setSalas(Integer salas) {
        this.salas = salas;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public String getAttribute1() {
        return attribute1;
    }

    public void setAttribute1(String attribute1) {
        this.attribute1 = attribute1;
    }

    public String getAttribute2() {
        return attribute2;
    }

    public void setAttribute2(String attribute2) {
        this.attribute2 = attribute2;
    }

    public String getAttribute3() {
        return attribute3;
    }

    public void setAttribute3(String attribute3) {
        this.attribute3 = attribute3;
    }

    public String getAttribute4() {
        return attribute4;
    }

    public void setAttribute4(String attribute4) {
        this.attribute4 = attribute4;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPhotolist() {
        return photolist;
    }

    public void setPhotolist(String photolist) {
        this.photolist = photolist;
    }

    public String getVideolist() {
        return videolist;
    }

    public void setVideolist(String videolist) {
        this.videolist = videolist;
    }

    public String getReservelist() {
        return reservelist;
    }

    public void setReservelist(String reservelist) {
        this.reservelist = reservelist;
    }

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    public String getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(String update_time) {
        this.update_time = update_time;
    }
}
