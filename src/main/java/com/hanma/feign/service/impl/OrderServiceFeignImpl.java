package com.hanma.feign.service.impl;

import com.hanma.feign.domain.Order;
import com.hanma.feign.domain.OrderSku;
import com.hanma.feign.service.OrderServiceFeign;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by zhaoyumeng on 2019/7/18.
 */
@Component
public class OrderServiceFeignImpl implements OrderServiceFeign {
    /**
     * 根据用户ID查询订单
     *
     * @param userId
     * @return
     */
    @Override
    public List<Order> getUserIdOrder(Long userId) {
        System.out.println("getUserIdOrder方法进熔断器了");
        return null;
    }

    /**
     * 根据订单主表ID查询附表数据
     * @param orderId
     * @return
     */
    @Override
    public List<OrderSku> queryOrderSku(Long orderId) {
        System.out.println("queryOrderSku方法进熔断器了");
        return null;
    }

}
