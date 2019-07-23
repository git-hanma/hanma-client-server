package com.hanma.service.impl;

import com.hanma.domain.Terrace;
import com.hanma.service.ClientService;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by p on 2019/7/16.
 */
@Component
public class ClientServiceImpl implements ClientService {


    /**
     * 商家注入店铺方法
     * name:王辉
     * @param terrace
     * @return
     */
    @Override
    public String addTerraceSave(Terrace terrace) {
        return null;
    }


    /**
     *
     * 调用后台服务接口 展示店铺
     * name:王辉
     * @return
     */
    @Override
    public List<Terrace> terraceQueryList() {
        return null;
    }
}
