package com.demo02.service.impl;

import com.demo02.mapper.LoginMapper;
import com.demo02.service.loginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements loginService {
    @Autowired
    private LoginMapper loginMapper;
    public String getUserPassword(String userCode){
        String password = loginMapper.getPasswordByCode(userCode);
        System.out.println(password);
        return password;
    }
}
