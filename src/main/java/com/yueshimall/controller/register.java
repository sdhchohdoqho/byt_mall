package com.yueshimall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class register {
    @RequestMapping("/success")
    public String success()
    {
        return "register-success";
    }


}
