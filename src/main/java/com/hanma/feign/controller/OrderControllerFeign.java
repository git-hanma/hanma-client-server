package com.hanma.feign.controller;

import com.hanma.feign.domain.Order;
import com.hanma.feign.domain.OrderSku;
import com.hanma.feign.service.OrderServiceFeign;
import com.hanma.feign.service.UserServiceFeign;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by zhaoyumeng on 2019/7/18.
 */
@Controller
@RequestMapping("/orderFeign")
public class OrderControllerFeign {
     /**
      * 注入Feign 接口
      */
    @Autowired
    private OrderServiceFeign orderServiceFegin;

    /**
     * 根据用户ID查询订单
     * @param userId
     * @return
     */
    @GetMapping("/getUserIdOrder")
    @ResponseBody
    public ModelAndView getUserIdOrder(Long userId){
        ModelAndView modelAndView = new ModelAndView("member_order");
        List<Order> orders =  orderServiceFegin.getUserIdOrder(userId);
        modelAndView.addObject("order",orders);
        return modelAndView;
    }


    /**
     * 返回页面
     * @return
     */
    @GetMapping("/queryOrderSku")
    @ResponseBody
    public ModelAndView queryOrderSku(Long orderId){
        ModelAndView mv = new ModelAndView("member_order_sku");
        List<OrderSku> orderSkus = orderServiceFegin.queryOrderSku(orderId);
        mv.addObject("orderSkus",orderSkus);
        return mv;
    }

}
