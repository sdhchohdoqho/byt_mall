package com.yueshimall.service;

import com.yueshimall.error.BusinessException;
import com.yueshimall.service.model.User;

public interface UserService {
     User GetUserByID(Integer id);
     void register(User user) throws BusinessException;
     User login(String password, String name)throws BusinessException;
     void updatemessage(User user)throws BusinessException;





}
