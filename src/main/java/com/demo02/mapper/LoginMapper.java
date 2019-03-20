package com.demo02.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

@Service
public interface LoginMapper {
    public String getPasswordByCode(@Param("userCode") String userCode);
}
