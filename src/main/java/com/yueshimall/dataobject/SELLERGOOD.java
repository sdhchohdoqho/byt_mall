package com.yueshimall.dataobject;

public class SELLERGOOD {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column seller_good.goodid
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    private Integer goodid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column seller_good.number
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    private Integer number;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column seller_good.price
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    private Integer price;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column seller_good.description
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    private String description;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column seller_good.sellerid
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    private Integer sellerid;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column seller_good.goodid
     *
     * @return the value of seller_good.goodid
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    public Integer getGoodid() {
        return goodid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column seller_good.goodid
     *
     * @param goodid the value for seller_good.goodid
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    public void setGoodid(Integer goodid) {
        this.goodid = goodid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column seller_good.number
     *
     * @return the value of seller_good.number
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    public Integer getNumber() {
        return number;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column seller_good.number
     *
     * @param number the value for seller_good.number
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    public void setNumber(Integer number) {
        this.number = number;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column seller_good.price
     *
     * @return the value of seller_good.price
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    public Integer getPrice() {
        return price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column seller_good.price
     *
     * @param price the value for seller_good.price
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    public void setPrice(Integer price) {
        this.price = price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column seller_good.description
     *
     * @return the value of seller_good.description
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    public String getDescription() {
        return description;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column seller_good.description
     *
     * @param description the value for seller_good.description
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column seller_good.sellerid
     *
     * @return the value of seller_good.sellerid
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    public Integer getSellerid() {
        return sellerid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column seller_good.sellerid
     *
     * @param sellerid the value for seller_good.sellerid
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    public void setSellerid(Integer sellerid) {
        this.sellerid = sellerid;
    }
}