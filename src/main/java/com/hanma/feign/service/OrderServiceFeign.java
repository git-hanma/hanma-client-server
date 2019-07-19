package com.hanma.feign.service;

import com.hanma.feign.domain.Order;
import com.hanma.feign.service.impl.UserServiceFeignImpl;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by zhaoyumeng on 2019/7/18.
 */
@FeignClient(value = "HANMA-ORDER-SERVER",fallback = UserServiceFeignImpl.class)
public interface OrderServiceFeign {

    /**
     * 根据用户ID查询订单
     * @param userId
     * @return
     */
    @GetMapping("/merOrder/getUserIdOrder")
    @ResponseBody
    List<Order> getUserIdOrder(@RequestParam("userId") Long userId);


}
