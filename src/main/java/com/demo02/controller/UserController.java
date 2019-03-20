package com.demo02.controller;


import com.demo02.service.impl.LoginServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {
    @Autowired
    private LoginServiceImpl loginService;


    @RequestMapping(value = "/login")
    public String login(){
        return "loginPage";
    }
    @RequestMapping("/loginto")
    public String index(HttpServletRequest request){
        String userCode = request.getParameter("userCode");
        String password = request.getParameter("password");
        System.out.println(userCode+"   "+password);
        System.out.println(loginService.getUserPassword(userCode));
        return "index";
    }
}
