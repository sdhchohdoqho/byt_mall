package com.yueshimall.dao;

import com.yueshimall.dataobject.ORDER;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface ORDERMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orderflag
     *
     * @mbggenerated Thu Jan 16 20:58:09 CST 2020
     */
    int deleteByPrimaryKey(Integer idorder);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orderflag
     *
     * @mbggenerated Thu Jan 16 20:58:09 CST 2020
     */
    int insert(ORDER record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orderflag
     *
     * @mbggenerated Thu Jan 16 20:58:09 CST 2020
     */
    int insertSelective(ORDER record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orderflag
     *
     * @mbggenerated Thu Jan 16 20:58:09 CST 2020
     */
    ORDER selectByPrimaryKey(Integer idorder);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orderflag
     *
     * @mbggenerated Thu Jan 16 20:58:09 CST 2020
     */
    int updateByPrimaryKeySelective(ORDER record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orderflag
     *
     * @mbggenerated Thu Jan 16 20:58:09 CST 2020
     */
    int updateByPrimaryKey(ORDER record);

    ORDER selectByShoppingid(Integer shoppingid);
}