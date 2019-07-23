package com.hanma.controller;

import com.google.gson.Gson;
import com.hanma.domain.Terrace;
import com.hanma.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by p on 2019/7/16.
 */
@Controller
@RequestMapping("client")
public class ClientServerController {

    @Autowired
    private ClientService clientService;



/*    @RequestMapping("addTerraceSave")
    @ResponseBody
    public ModelAndView addTerraceSave(Terrace terrace){
        String terrace1 = new Gson().toJson(terrace);
        ModelAndView mav  = new ModelAndView();
        String s = clientService.addTerraceSave(terrace1);
        mav.addObject("s",s);
        return mav;
    }

    @RequestMapping("addDialog")
    public ModelAndView addDialog(){
        ModelAndView mav = new ModelAndView("/reception/view/addterrace");
        return mav;
    }*/




    /**
     * 调用后台服务 商家注入店铺
     * name: 王辉
     * @param terrace
     * @return
     */
    @RequestMapping("addTerraceSave")
    @ResponseBody
    public String addTerraceSave(Terrace terrace) {
        //String terrace1 = new Gson().toJson(terrace);
        return clientService.addTerraceSave(terrace);
    }





    /**
     * 调用后天服务接口 展示店铺
     *name : 王辉
     * @return
     */
    @RequestMapping("terraceQueryList")
    @ResponseBody
    public ModelAndView terraceQueryList(){
        ModelAndView mav = new ModelAndView("index_shop");
        List<Terrace> listQuery = clientService.terraceQueryList();
        mav.addObject("listQuery",listQuery);
        return mav;
    }
}