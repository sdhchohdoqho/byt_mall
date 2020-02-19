package com.yueshimall.dao;

import com.yueshimall.dataobject.SKU;

import java.util.List;

public interface SKUMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sku
     *
     * @mbg.generated Tue Dec 10 20:52:35 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sku
     *
     * @mbg.generated Tue Dec 10 20:52:35 CST 2019
     */
    int insert(SKU record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sku
     *
     * @mbg.generated Tue Dec 10 20:52:35 CST 2019
     */
    int insertSelective(SKU record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sku
     *
     * @mbg.generated Tue Dec 10 20:52:35 CST 2019
     */
    SKU selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sku
     *
     * @mbg.generated Tue Dec 10 20:52:35 CST 2019
     */
    int updateByPrimaryKeySelective(SKU record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sku
     *
     * @mbg.generated Tue Dec 10 20:52:35 CST 2019
     */
    int updateByPrimaryKey(SKU record);
    List<SKU> listsku(Integer spu_id);

    SKU selectByspuId(Integer spu_id);

    int deleteByspuId(Integer spu_id);
}