package com.hanma.controller;/**
 * Created by Administrator on 2019/7/14.
 */

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.websocket.server.PathParam;

/**
 * @program: hanma-client-server
 * @description: 前台用户端
 * @author: "Laugh Yan
 * @author: 申笑琰
 * @create: 2019-07-14 20:49
 */
@Controller
public class ClientController {
    @RequestMapping("/index")
    public String gotoIndex(){
        return "index";
    }
    @RequestMapping("/login")
    public String gotoLogin(){
        return "login";
    }
    @RequestMapping("path")
    public String fotoPath(String path){
        return path;
    }
}
