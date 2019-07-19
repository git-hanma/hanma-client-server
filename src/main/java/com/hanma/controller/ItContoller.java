package com.hanma.controller;

import com.google.gson.Gson;
import com.hanma.domain.Item;
import com.hanma.domain.Type;
import com.hanma.service.ItService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.List;

@Controller
@RequestMapping("itCon")
public class ItContoller {

    @Autowired
    private ItService itService;

//查询类目列表
    @ResponseBody
    @RequestMapping(value = "queryType",method = RequestMethod.GET)
    public ModelAndView queryType(){
        ModelAndView view = new ModelAndView("shop_detail_all");
        List<Type> list=itService.queryType();
        view.addObject("typelist",list);
        return view;
    }
//查询商品列表
    @ResponseBody
    @RequestMapping("queryItem")
    public ModelAndView queryItem(Long id){
        ModelAndView view = new ModelAndView("shop_item");
        List<Item> list = itService.queryItem(id);
        view.addObject("itemList",list);
        return view;
    }
    //查询类目列表(商家权限)
    @ResponseBody
    @RequestMapping(value = "queryAllType",method = RequestMethod.GET)
    public ModelAndView queryAllType(){
        ModelAndView view = new ModelAndView("member_leimu");
        List<Type> list=itService.queryType();
        view.addObject("tlist",list);
        return view;
    }
    //查询商品列表（商家权限）
    @ResponseBody
    @RequestMapping("queryAllItem")
    public ModelAndView queryAllItem(){
        ModelAndView view = new ModelAndView("member_shangpin");
        List<Item> list = itService.queryAllItem();
        view.addObject("iList",list);
        return view;
    }

    //跳转新增页面
    @RequestMapping("toInsert")
    public String toinsert(){
        return "insert_item";
    }
    //跳转新增类目页面
    @RequestMapping("toInsertleimu")
    public String toInsertleimu(){
        return "insert_leimu";
    }
    //新增商品（商家权限）
    @ResponseBody
    @RequestMapping(value = "insertItem",method = RequestMethod.GET)
    public String insertItem(Item item){
        String jsonItem = new Gson().toJson(item);
        itService.insertItem(jsonItem);
        return "提交成功";
    }
    //修改商品
    @ResponseBody
    @RequestMapping(value = "updateItem",method = RequestMethod.GET)
    public ModelAndView updateItem(Long id){
        ModelAndView view = new ModelAndView("insert_item");
        Item item=itService.updateItem(id);
        //将时间转换成字符串赋到对应的字符串属性上
        SimpleDateFormat format = new SimpleDateFormat();
        String format1 = format.format(item.getItemCreateTime());
        item.setCreateDateTime(format1);
        String format2 = format.format(item.getItemUpdateTime());
        item.setUpdateDateTime(format2);

        view.addObject("list",item);
        return view;
    }
    //删除商品
    @ResponseBody
    @RequestMapping(value = "deleteItem",method = RequestMethod.GET)
    public void deleteItem(Long id){
        itService.deleteItem(id);
    }
    //新增类目
    @RequestMapping(value = "insert",method = RequestMethod.GET)
    public void insert(Type type){
        String json = new Gson().toJson(type);
        itService.insert(json);
    }
    //修改类目
    @ResponseBody
    @RequestMapping(value = "xiugaileimu",method = RequestMethod.GET)
    public ModelAndView xiugaileimu(Long id){
        ModelAndView view = new ModelAndView("insert_leimu");
        Type type=itService.xiugaileimu(id);
        //时间格式转换string
        SimpleDateFormat format = new SimpleDateFormat();
        if(type.getTypeCreateTime()!=null) {
            String format1 = format.format(type.getTypeCreateTime());
            type.setCreateTimeStr(format1);
        }
        if(type.getTypeUpdateTime()!=null) {
            String format2 = format.format(type.getTypeUpdateTime());
            type.setUpdateTimeStr(format2);
        }
        view.addObject("typeUser",type);
        return view;
    }
    //删除类目
    @ResponseBody
    @RequestMapping(value = "shanchuleimu",method = RequestMethod.GET)
    public void shanchuleimu(Long id){
        itService.shanchuleimu(id);
    }
}