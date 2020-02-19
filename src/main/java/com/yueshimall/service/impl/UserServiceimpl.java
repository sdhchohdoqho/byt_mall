package com.yueshimall.service.impl;

import com.yueshimall.dao.CUSTOMERMapper;
import com.yueshimall.dataobject.CUSTOMER;
import com.yueshimall.error.BusinessException;
import com.yueshimall.error.ErrorBuiness;
import com.yueshimall.service.UserService;
import com.yueshimall.service.model.User;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceimpl implements UserService {
    @Autowired
    private CUSTOMERMapper customerMapper;

    @Override
     public User GetUserByID(Integer id) {
        CUSTOMER customer=customerMapper.selectByPrimaryKey(id);
        if(customer==null)
        {
            return null;
        }
        return  convertfromDataObject(customer);

    }

    @Override
    public void register(User user) throws BusinessException {
        if(user==null)
        {
            throw new BusinessException(ErrorBuiness.USER_NOT_EXIST);
        }
        CUSTOMER customer=convertfrommodel(user);
        customerMapper.insertSelective(customer);



    }
    @Override
    public void updatemessage(User user) throws BusinessException {
        if(user==null)
        {
            throw new BusinessException(ErrorBuiness.USER_NOT_EXIST);
        }
        CUSTOMER customer=convertfrommodel(user);
        customerMapper.updateByPrimaryKey(customer);



    }

    @Override
    public User login(String password, String name) throws BusinessException {
        //获得用户信息
        CUSTOMER customer=customerMapper.selectByName(name);
        if(customer==null)
        {

            throw new BusinessException(ErrorBuiness.USER_NOT_EXIST);
        }
        User user=convertfromDataObject(customer);
        //信息比对
        if(!com.alibaba.druid.util.StringUtils.equals(user.getPassword(),password))
        {

            throw new BusinessException(ErrorBuiness.PASSWORD_ERROR);
        }
        return user;
    }

    private CUSTOMER convertfrommodel(User user)
    {
        if(user==null)
        {
            return null;
        }
        CUSTOMER customer=new CUSTOMER();
        BeanUtils.copyProperties(user,customer);
        return  customer;


    }

    private  User convertfromDataObject(CUSTOMER customer)
    {
        if(customer==null)
        {
            return null;
        }
        User user =new User();
        BeanUtils.copyProperties(customer,user);
        return user;
    }

}
