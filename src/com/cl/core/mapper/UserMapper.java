package com.cl.core.mapper;

import com.cl.core.bean.User;
import org.apache.ibatis.annotations.Param;

/**
 * @author chen
 * @create 2020-06-18 10:16
 */
public interface UserMapper {

    /**
     *  通过用户名 密码 查询用户
     * @param usercode
     * @param password
     * @return
     */
    public User cheakLogin(@Param("usercode")String usercode, @Param("password")String password);
}
