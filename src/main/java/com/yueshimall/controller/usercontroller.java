package com.yueshimall.controller;

import com.yueshimall.error.BusinessException;
import com.yueshimall.error.ErrorBuiness;
import com.yueshimall.response.CommonReturn;
import com.yueshimall.service.UserService;
import com.yueshimall.service.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller("user")
@RequestMapping("/user")





public class usercontroller {
    @Autowired


    private UserService userService;


    @Autowired
    private HttpServletRequest httpServletRequest;


    //用户登录接口
    @RequestMapping(value = "/login",method = {RequestMethod.POST},consumes = {"application/x-www-form-urlencoded"})
    @ResponseBody
    @CrossOrigin
    public CommonReturn login(@RequestParam(name="password")String password,
                              @RequestParam(name="name")String name)throws BusinessException
    {
        User user=userService.login(password,name);
        this.httpServletRequest.getSession().setAttribute("login_flag",true);
        this.httpServletRequest.getSession().setAttribute("username",user.getName());
        this.httpServletRequest.getSession().setAttribute("customerid",user.getCustomerid());
        this.httpServletRequest.getSession().setAttribute("userpassword",user.getPassword());
        this.httpServletRequest.getSession().setAttribute("userphone",user.getTelephone());
        this.httpServletRequest.getSession().setAttribute("usercardnumber",user.getCardnumber());
        return CommonReturn.create(null);

    }




    //用户注册接口
    @RequestMapping(value = "/register",method = {RequestMethod.POST},consumes = {"application/x-www-form-urlencoded"})
    @ResponseBody
    @CrossOrigin
    public CommonReturn updatemessage(@RequestParam(name="telephone")Integer telephone,
                                 @RequestParam(name="name")String name,
                                 @RequestParam(name="password")String password,
                                 @RequestParam(name="cardnumber")String cardnumber)throws BusinessException
    {
        User user =new User();
        user.setName(name);
        user.setPassword(password);
        user.setTelephone(telephone);
        user.setCardnumber(cardnumber);
        userService.register(user);
        return CommonReturn.create(null);
        //实现model到data的方法

    }
    //用户修改信息接口
    @RequestMapping(value = "/change",method = {RequestMethod.POST},consumes = {"application/x-www-form-urlencoded"})
    @ResponseBody
    @CrossOrigin
    public CommonReturn changemessage(@RequestParam(name="telephone")Integer telephone,
                                 @RequestParam(name="name")String name,
                                 @RequestParam(name="password")String password,
                                 @RequestParam(name="cardnumber")String cardnumber)throws BusinessException
    {
        User user =new User();
        user.setName(name);
        user.setPassword(password);
        user.setTelephone(telephone);
        user.setCardnumber(cardnumber);
        userService.register(user);
        return CommonReturn.create(null);
        //实现model到data的方法

    }







    @RequestMapping("/get")
    @ResponseBody
    public CommonReturn GetUser(@RequestParam(name="id")Integer id) throws BusinessException {



        User user=userService.GetUserByID(id);
        //若获取用户信息不存在
        if(user==null)
        {
            throw new BusinessException(ErrorBuiness.USER_NOT_EXIST);
        }
        return CommonReturn.create(user);


    }
    @ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    public Object handlerException(HttpServletRequest request, Exception ex)
    {
        if (ex instanceof  BusinessException) {
            BusinessException businessException = (BusinessException) ex;
            Map<String, Object> responsedata = new HashMap<>();
            responsedata.put("errCode", businessException.getErrorcode());
            responsedata.put("errMessage", businessException.getErrorMessage());
            return CommonReturn.create(responsedata, "fail");

        }else
        {
            Map<String, Object> responsedata = new HashMap<>();
            responsedata.put("errCode", ErrorBuiness.COMMON_ERROR.getErrorcode());
            responsedata.put("errMessage", ErrorBuiness.COMMON_ERROR.getErrorMessage());
            return CommonReturn.create(responsedata, "fail");
        }


    }




}
