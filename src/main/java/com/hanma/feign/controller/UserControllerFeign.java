package com.hanma.feign.controller;

import com.google.gson.Gson;
import com.hanma.commons.ImgUtil;
import com.hanma.commons.ResultMsg;
import com.hanma.feign.domain.Collect;
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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

    /**
     * 新增收藏
     * @param collect
     * @return
     */
    @PostMapping("/saveCollect")
    @ResponseBody
    public ResultMsg saveCollect(Collect collect){
        return userServiceFegin.saveCollect(collect);
    }


    /**
     * 根据用户ID查询收藏记录
     * @param userId
     * @return
     */
    @GetMapping("/queryUserIdCollect")
    @ResponseBody
    public ModelAndView queryUserIdCollect(Long userId){
        ModelAndView mv = new ModelAndView("member_collect");
        List<Collect> collectList = userServiceFegin.queryUserIdCollect(userId);
        mv.addObject("collect",collectList);
        return mv;
    }

    /**
     * 根据收藏ID删除
     * @param collectId
     * @return
     */
    @PostMapping("/delCollectId")
    @ResponseBody
    public ResultMsg delCollectId(Long collectId){
        return  userServiceFegin.delCollectId(collectId);
    }

    /**
     * 生成图片验证码
     */
    @GetMapping(value = "/getImg")
    @ResponseBody
    public String getImg(HttpServletRequest request,HttpServletResponse response){
        ImgUtil img = new ImgUtil();
        String str = img.getImg(request, response);
        return str;
    }

    /**
     * 登录方法
     * @param user
     * @return
     */
    @GetMapping("/loginUser")
    @ResponseBody
    public ResultMsg loginUser(HttpServletRequest request,User user,String code){
        //创建状态类
        ResultMsg rs = new ResultMsg();
        //创建Gson 将对象装换成string 通过feign去调用服务端
        Gson gson = new Gson();
        //将对象装换成string
        String obj = gson.toJson(user);
        //讲验证码从缓存中取出
        Object attribute = request.getSession().getAttribute("codeImg");
        String sionCode = attribute.toString();
        //将字符串转换成小写
        String s = sionCode.toLowerCase();
        String reCode = code.toLowerCase();
        //如果验证码不一致返回前台提示
        if(!reCode.equals(s)){
            rs.setMsg("<font color='red'>验证码输入错误</font>");
            rs.setCode(500);
            return rs;
        }
        //讲session制空
        request.getSession().setAttribute("codeImg",null);

        rs = userServiceFegin.loginUser(obj,code);
        return  rs;
    }

}
