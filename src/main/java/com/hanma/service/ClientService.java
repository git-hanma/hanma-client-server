package com.hanma.service;

import com.hanma.domain.Terrace;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import sun.awt.SunHints;

import java.util.List;

/**
 * Created by p on 2019/7/16.
 */
@FeignClient(value = "HANMA-TERRACE-SERVER-HUI")
public interface ClientService {


        /**
         * 调用后台服务加厚
         * name:王辉
         * @param terrace
         * @return
         */
        @RequestMapping(value = "/terrace/addTerraceSave" ,method = RequestMethod.POST)
        String addTerraceSave(@RequestBody Terrace terrace);


        /**
         * 调用后台服务接口  展示店铺
         * name:王辉
         * @return
         */
        @RequestMapping(value = "/terrace/terraceQueryList",method = RequestMethod.GET)
        List<Terrace> terraceQueryList();
}
