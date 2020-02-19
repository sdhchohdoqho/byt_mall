package com.yueshimall.dao;

import com.yueshimall.dataobject.SHOPPING;
import org.springframework.stereotype.Component;

@Component
public interface SHOPPINGMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping
     *
     * @mbggenerated Thu Jan 16 15:42:11 CST 2020
     */
    int deleteByPrimaryKey(Integer idshopping);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping
     *
     * @mbggenerated Thu Jan 16 15:42:11 CST 2020
     */
    int insert(SHOPPING record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping
     *
     * @mbggenerated Thu Jan 16 15:42:11 CST 2020
     */
    int insertSelective(SHOPPING record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping
     *
     * @mbggenerated Thu Jan 16 15:42:11 CST 2020
     */
    SHOPPING selectByPrimaryKey(Integer idshopping);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping
     *
     * @mbggenerated Thu Jan 16 15:42:11 CST 2020
     */
    int updateByPrimaryKeySelective(SHOPPING record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shopping
     *
     * @mbggenerated Thu Jan 16 15:42:11 CST 2020
     */
    int updateByPrimaryKey(SHOPPING record);

    SHOPPING selectByCustomerid(Integer customerid);
}