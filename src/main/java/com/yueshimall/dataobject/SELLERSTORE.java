package com.yueshimall.dataobject;

public class SELLERSTORE {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sellerstore.id
     *
     * @mbg.generated Fri Feb 14 20:16:24 CST 2020
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sellerstore.userid
     *
     * @mbg.generated Fri Feb 14 20:16:24 CST 2020
     */
    private Integer userid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sellerstore.storeidlist
     *
     * @mbg.generated Fri Feb 14 20:16:24 CST 2020
     */
    private String storeidlist;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sellerstore.id
     *
     * @return the value of sellerstore.id
     *
     * @mbg.generated Fri Feb 14 20:16:24 CST 2020
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sellerstore.id
     *
     * @param id the value for sellerstore.id
     *
     * @mbg.generated Fri Feb 14 20:16:24 CST 2020
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sellerstore.userid
     *
     * @return the value of sellerstore.userid
     *
     * @mbg.generated Fri Feb 14 20:16:24 CST 2020
     */
    public Integer getUserid() {
        return userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sellerstore.userid
     *
     * @param userid the value for sellerstore.userid
     *
     * @mbg.generated Fri Feb 14 20:16:24 CST 2020
     */
    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sellerstore.storeidlist
     *
     * @return the value of sellerstore.storeidlist
     *
     * @mbg.generated Fri Feb 14 20:16:24 CST 2020
     */
    public String getStoreidlist() {
        return storeidlist;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sellerstore.storeidlist
     *
     * @param storeidlist the value for sellerstore.storeidlist
     *
     * @mbg.generated Fri Feb 14 20:16:24 CST 2020
     */
    public void setStoreidlist(String storeidlist) {
        this.storeidlist = storeidlist == null ? null : storeidlist.trim();
    }
}