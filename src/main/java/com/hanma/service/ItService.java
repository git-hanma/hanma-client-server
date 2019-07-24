package com.hanma.service;

import com.hanma.domain.Item;
import com.hanma.domain.Type;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;


@FeignClient(value = "HANMA-COMMODITY-SERVER",fallback = ItServiceImpl.class)
public interface ItService {

    @RequestMapping(value = "type/queryType",method = RequestMethod.GET)
    List<Type> queryType();

    @RequestMapping(value = "item/queryItem",method = RequestMethod.GET)
    List<Item> queryItem(@RequestParam("id") Long id);

    @RequestMapping(value = "item/queryAllItem",method = RequestMethod.GET)
    List<Item> queryAllItem();

    @RequestMapping(value = "item/insertItem",method = RequestMethod.GET)
    void insertItem(@RequestParam("jsonItem") String jsonItem);

    @RequestMapping(value = "item/updateItem",method = RequestMethod.GET)
    Item updateItem(@RequestParam("id") Long id);

    @RequestMapping(value = "item/deleteItem",method = RequestMethod.GET)
    void deleteItem(@RequestParam("id") Long id);

    @RequestMapping(value = "type/insertleimu",method = RequestMethod.GET)
    void insert(@RequestParam("json") String json);

    @RequestMapping(value = "type/xiugaileimu",method = RequestMethod.GET)
    Type xiugaileimu(@RequestParam("id") Long id);

    @RequestMapping(value = "type/shanchuleimu",method = RequestMethod.GET)
    void shanchuleimu(@RequestParam("id") Long id);

    @RequestMapping(value = "type/queryTypeById",method = RequestMethod.GET)
    List<Type> queryTypeById(@RequestParam("id") Long id);
}
