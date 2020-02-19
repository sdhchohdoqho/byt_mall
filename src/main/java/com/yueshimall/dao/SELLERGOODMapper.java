package com.yueshimall.dao;

import com.yueshimall.dataobject.SELLERGOOD;
import org.springframework.stereotype.Component;

@Component
public interface SELLERGOODMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table seller_good
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    int deleteByPrimaryKey(Integer goodid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table seller_good
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    int insert(SELLERGOOD record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table seller_good
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    int insertSelective(SELLERGOOD record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table seller_good
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    SELLERGOOD selectByPrimaryKey(Integer goodid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table seller_good
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    int updateByPrimaryKeySelective(SELLERGOOD record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table seller_good
     *
     * @mbggenerated Fri Jan 17 18:03:45 CST 2020
     */
    int updateByPrimaryKey(SELLERGOOD record);
}