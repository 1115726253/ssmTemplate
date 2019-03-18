package com.demo01.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Test01 {
    @RequestMapping("/index")
    public String index(){
        return "index";
    }
    @RequestMapping("/hello")
    @ResponseBody
    public String hello(){
       return "hello";

    }
}
