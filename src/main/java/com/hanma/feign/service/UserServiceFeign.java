package com.hanma.feign.service;


import com.hanma.commons.DataGrid;
import com.hanma.feign.domain.Address;
import com.hanma.commons.ResultMsg;
import com.hanma.feign.domain.Collect;
import com.hanma.feign.domain.Comment;
import com.hanma.feign.domain.Order;
import com.hanma.feign.domain.User;
import com.hanma.feign.service.impl.UserServiceFeignImpl;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by zhaoyumeng on 2019/7/16.
 */
@FeignClient(value = "USER-SERVER",fallback = UserServiceFeignImpl.class)
public interface UserServiceFeign {
    /**
     * 根据用户ID查询
     * @param userId
     * @return
     */
    @GetMapping("/user/getUserId")
    @ResponseBody
    User getUserId(@RequestParam("userId") Long userId);

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    @PostMapping("/user/updateUser")
    @ResponseBody
    ResultMsg updateUser(@RequestBody User user);

    /**
     * 根据用户ID查询商家ID是否存在
     * @param userId
     * @return
     */
    @GetMapping("/user/getUserIdMerchantId")
    @ResponseBody
    Long getUserIdMerchantId(@RequestParam("userId")  Long userId);


    /**
     * 新增地址
     * @param address
     * @return
     */
    @PostMapping("/address/saveAddress")
    @ResponseBody
    ResultMsg saveAddress(@RequestBody Address address);

    /**
     * 根据用户ID查询所有地址
     * @param userId
     * @return
     */
    @GetMapping("/address/queryUserIdAddress")
    @ResponseBody
    List<Address> queryUserIdAddress(@RequestParam("userId") Long userId);

    /**
     * 根据地址ID删除
     * @param addressId
     * @return
     */
    @PostMapping("/address/delAddressId")
    @ResponseBody
    ResultMsg delAddressId(@RequestParam("addressId") Long addressId);

    /**
     * 根据地址ID查询
     * @param addressId
     * @return
     */
    @GetMapping("/address/getAddressId")
    @ResponseBody
    Address getAddressId(@RequestParam("addressId") Long addressId);

    /**
     * 修改地址
     * @param address
     * @return
     */
    @PostMapping("/address/updateAddress")
    @ResponseBody
    ResultMsg updateAddress(@RequestBody Address address);

    /**
     * 新增评论
     * @param comment
     * @return
     */
    @PostMapping("/comment/saveComment")
    @ResponseBody
    ResultMsg saveComment(@RequestBody Comment comment);

    /**
     * 根据商家ID查询所有评论
     * @param merchantId
     * @return
     */
    @GetMapping("/comment/queryMerchantIdComment")
    @ResponseBody
    List<Comment> queryMerchantIdComment(@RequestParam("merchantId") Long merchantId);

    /**
     * 新增收藏
     * @param collect
     * @return
     */
    @PostMapping("/collect/saveCollect")
    @ResponseBody
    ResultMsg saveCollect(@RequestBody Collect collect);

    /**
     * 根据用户ID查询收藏记录
     * @param userId
     * @return
     */
    @GetMapping("/collect/queryUserIdCollect")
    @ResponseBody
    List<Collect> queryUserIdCollect(@RequestParam("userId") Long userId);

    /**
     * 根据收藏ID删除
     * @param collectId
     * @return
     */
    @PostMapping("/collect/delCollectId")
    @ResponseBody
    ResultMsg delCollectId(@RequestParam("collectId") Long collectId);

    /**
     * 登录
     * @param code
     * @param user
     * @return
     */
    @GetMapping("/user/loginUser")
    @ResponseBody
    ResultMsg loginUser(@RequestParam("user") String user,@RequestParam("code") String code);

}
