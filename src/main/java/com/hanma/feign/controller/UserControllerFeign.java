package com.hanma.feign.controller;

import com.hanma.commons.ResultMsg;
import com.hanma.feign.domain.Comment;
import com.hanma.feign.domain.User;
import com.hanma.feign.service.UserServiceFeign;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

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

    /**
     * 根据用户ID查询商家ID
     * @param userId
     * @return
     */
    @GetMapping("/getUserIdMerchantId")
    @ResponseBody
    public Long getUserIdMerchantId(Long userId){
        return userServiceFegin.getUserIdMerchantId(userId);
    }

    /**
     * 新增评论
     * @param comment
     * @return
     */
    @PostMapping("/saveComment")
    @ResponseBody
    public ResultMsg saveComment(Comment comment){
        return userServiceFegin.saveComment(comment);
    }


    /**
     * 根据商家ID查询所有评论
     * @param merchantId
     * @return
     */
    @GetMapping("/queryMerchantIdComment")
    @ResponseBody
    public ModelAndView queryMerchantIdComment(Long merchantId){
        ModelAndView mv = new ModelAndView("shop_comment");
        List<Comment> commentList =  userServiceFegin.queryMerchantIdComment(merchantId);
        mv.addObject("commentList",commentList);
        return mv;
    }
}
