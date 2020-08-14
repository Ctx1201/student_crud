package com.cl.core.service.Impl;

import com.cl.core.bean.User;
import com.cl.core.mapper.UserMapper;
import com.cl.core.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author chen
 * @create 2020-06-18 10:21
 */

@Service
public class UserSeviceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    /**
     *  通过 用户名 密码查询用户
     * @param usercode
     * @param password
     * @return
     */
    @Override
    public User cheakLogin(String usercode, String password) {
        return  userMapper.cheakLogin(usercode,password);
    }
}
