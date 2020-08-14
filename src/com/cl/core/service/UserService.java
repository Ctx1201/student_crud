package com.cl.core.service;

import com.cl.core.bean.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

/**
 * @author chen
 * @create 2020-06-18 10:18
 */
public interface UserService {

    /**
     *  通过用户名 密码 查询用户
     * @param usercode
     * @param password
     * @return
     */
    public User cheakLogin(String usercode,  String password);
}
