package com.yueshimall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class first {
    @RequestMapping("/regist")
    public String regist()
    {
        return "register";
    }
    @RequestMapping("/login")
    public String login()
    {
        return "login";
    }
    @RequestMapping("/first")
    public String first()
    {
        return "first";
    }


}
