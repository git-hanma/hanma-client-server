package com.hanma.controller;/**
 * Created by Administrator on 2019/7/14.
 */

import com.hanma.domain.Terrace;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.websocket.server.PathParam;
import java.util.List;

/**
 * @program: hanma-client-server
 * @description: 前台用户端
 * @author: "Laugh Yan
 * @author: 申笑琰
 * @create: 2019-07-14 20:49
 */
@Controller
public class ClientController {
    /**
    *@Description: ClientController java类作用描述:首页
    *@Param: * @param null
    *@return: 
    *@Author: 申笑琰
    *@CreateDate: 2019/7/15 下午 05:39
    */
    @RequestMapping("/index")
    public String gotoIndex(){
        return "index";
    }
    /**
    *@Description: ClientController java类作用描述:登录
    *@Param: * @param null
    *@return: 
    *@Author: 申笑琰
    *@CreateDate: 2019/7/15 下午 05:39
    */
    @RequestMapping("/login")
    public String gotoLogin(){
        return "login";
    }
    /**
    *@Description: ClientController java类作用描述:注册
    *@Param: * @param null
    *@return: 
    *@Author: 申笑琰
    *@CreateDate: 2019/7/15 下午 05:40
    */
    @RequestMapping("/register")
    public String gotoRegister(){
        return "register";
    }
    /**
    *@Description: ClientController java类作用描述:根据path跳转
    *@Param: * @param null
    *@return: 
    *@Author: 申笑琰
    *@CreateDate: 2019/7/15 下午 05:40
    */
    @RequestMapping("path")
    public String fotoPath(String path){
        return path;
    }


    @RequestMapping("toPage")
    public String toPage(){
        return "shop_detail";
    }
}
