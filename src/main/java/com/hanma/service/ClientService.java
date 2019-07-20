package com.hanma.service;

import com.hanma.domain.Terrace;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import sun.awt.SunHints;

/**
 * Created by p on 2019/7/16.
 */
@FeignClient(value = "HANMA-TERRACE-SERVER")
public interface ClientService {

        @RequestMapping(value = "/terrace/addTerraceSave" ,method = RequestMethod.POST)
        String addTerraceSave(@RequestBody Terrace terrace);

}
