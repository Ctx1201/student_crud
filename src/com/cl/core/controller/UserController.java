package com.cl.core.controller;

import com.cl.core.bean.User;
import com.cl.core.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * @author chen
 * @create 2020-06-18 10:36
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;
    @RequestMapping("login.action")
    public String login(String usercode, String password, Model model,HttpSession session){
        User user = userService.cheakLogin(usercode, password);
        if (user!=null){
            session.setAttribute("USER_SESSION",user);
            return "redirect:student/list.action";
        }
        String msg="账号或密码错误！";
        model.addAttribute("msg",msg);
        return "login";
    }

}
