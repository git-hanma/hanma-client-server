package com.hanma.feign.controller;

import com.hanma.commons.ResultMsg;
import com.hanma.feign.domain.User;
import com.hanma.feign.service.UserServiceFeign;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by zhaoyumeng on 2019/7/16.
 */
@Controller
@RequestMapping("/userFeign")
public class UserControllerFeign {

    @Autowired
    private UserServiceFeign userServiceFegin;

    /**
     * 调用用户模块
     * @param userId
     * @return
     */
    @GetMapping("/getUserId")
    @ResponseBody
    public User getUserId(Long userId, ModelMap map){

        User user = userServiceFegin.getUserId(userId);
        map.addAttribute("user",user);
        return user;
    }

    /**
     * 根据ID修改用户信息
     * @param user
     * @return
     */
    @PostMapping("/updateUser")
    @ResponseBody
    public ResultMsg updateUser(User user){
        return userServiceFegin.updateUser(user);
    }
}
