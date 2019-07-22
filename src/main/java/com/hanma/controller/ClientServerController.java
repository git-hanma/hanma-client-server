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


    @RequestMapping("addTerraceSave")
    @ResponseBody
    public String addTerraceSave(Terrace terrace) {
        //String terrace1 = new Gson().toJson(terrace);
        return clientService.addTerraceSave(terrace);
    }

}
