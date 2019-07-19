package com.hanma.feign.controller;

import com.hanma.commons.DataGrid;
import com.hanma.feign.domain.Address;
import com.hanma.commons.ResultMsg;
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
 *
 */
@Controller
@RequestMapping("/addressFeign")
public class AddressControllerFeign {

    /**
     * 注入Feign 接口
     */
    @Autowired
    private UserServiceFeign userServiceFegin;

    /**
     * 新增地址接口
     * @param address
     * @return
     */
    @PostMapping("/saveAddress")
    @ResponseBody
    public ResultMsg saveAddress(Address address){

        return userServiceFegin.saveAddress(address);

    }

    /**
     * 根据ID查询所有订单
     * @param userId
     * @return
     */
    @GetMapping("/queryUserIdAddress")
    @ResponseBody
    public ModelAndView queryUserIdAddress(Long userId){
        ModelAndView mav = new ModelAndView("member_addr");
        List<Address> addressList =  userServiceFegin.queryUserIdAddress(userId);
        mav.addObject("list",addressList);
        return mav;
    }

    /**
     * 根据ID删除
     * @param addressId
     * @return
     */
    @PostMapping("/delAddressId")
    @ResponseBody
    public ResultMsg delAddressId(Long addressId){
        return userServiceFegin.delAddressId(addressId);
    }

    /**
     * 根据地址id查询
     * @param addressId
     * @return
     */
    @GetMapping("/getAddressId")
    @ResponseBody
    public Address getAddressId(Long addressId){
        return userServiceFegin.getAddressId(addressId);
    }

    /**
     * 修改地址
     * @param address
     * @return
     */
    @PostMapping("/updateAddress")
    @ResponseBody
    public ResultMsg updateAddress(Address address){
        return userServiceFegin.updateAddress(address);
    }
}
