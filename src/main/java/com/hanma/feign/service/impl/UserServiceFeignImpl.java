package com.hanma.feign.service.impl;

import com.hanma.commons.ResultMsg;
import com.hanma.feign.domain.Address;
import com.hanma.feign.domain.Order;
import com.hanma.feign.domain.User;
import com.hanma.feign.service.UserServiceFeign;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by zhaoyumeng on 2019/7/16.
 */
@Component
public class UserServiceFeignImpl implements UserServiceFeign {

    /**
     * 根据用户ID查询
     * @param userId
     * @return
     */
    @Override
    public User getUserId(Long userId) {
        System.out.println("getUserId方法进熔断器了");
        return null;
    }

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    @Override
    public ResultMsg updateUser(User user) {
        System.out.println("updateUser方法进熔断器了");
        return null;
    }

    /**
     * 新增地址
     * @param address
     * @return
     */
    @Override
    public ResultMsg saveAddress(Address address) {
        System.out.println("saveAddress方法进熔断器了");
        return null;
    }

    /**
     * 根据用户ID查询所有地址
     *
     * @param userId
     * @return
     */
    @Override
    public List<Address> queryUserIdAddress(Long userId) {
        System.out.println("queryUserIdAddress方法进熔断器了");
        return null;
    }

    /**
     * 根据地址ID删除
     *
     * @param addressId
     * @return
     */
    @Override
    public ResultMsg delAddressId(Long addressId) {
        System.out.println("delAddressId方法进熔断器了");
        return null;
    }

    /**
     * 根据地址ID查询
     *
     * @param addressId
     * @return
     */
    @Override
    public Address getAddressId(Long addressId) {
        System.out.println("getAddressId方法进熔断器了");
        return null;
    }

    /**
     * 修改地址
     *
     * @param address
     * @return
     */
    @Override
    public ResultMsg updateAddress(Address address) {
        System.out.println("updateAddress方法进熔断器了");
        return null;
    }

}