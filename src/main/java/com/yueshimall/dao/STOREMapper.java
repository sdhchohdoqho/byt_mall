package com.yueshimall.dao;

import com.yueshimall.dataobject.STORE;

public interface STOREMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table store
     *
     * @mbg.generated Fri Feb 14 20:16:24 CST 2020
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table store
     *
     * @mbg.generated Fri Feb 14 20:16:24 CST 2020
     */
    int insert(STORE record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table store
     *
     * @mbg.generated Fri Feb 14 20:16:24 CST 2020
     */
    int insertSelective(STORE record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table store
     *
     * @mbg.generated Fri Feb 14 20:16:24 CST 2020
     */
    STORE selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table store
     *
     * @mbg.generated Fri Feb 14 20:16:24 CST 2020
     */
    int updateByPrimaryKeySelective(STORE record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table store
     *
     * @mbg.generated Fri Feb 14 20:16:24 CST 2020
     */
    int updateByPrimaryKey(STORE record);
}