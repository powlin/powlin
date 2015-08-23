/**
 * @Title DemoController.java 
 * @Package com.ibis.pz.controller 
 * @Description 
 * @author miyb  
 * @date 2015-5-13 上午10:28:47 
 * @version V1.0   
 */
package com.xnjr.cpzc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xnjr.cpzc.http.BizConnecter;

/** 
 * @author: miyb 
 * @since: 2015-5-13 上午10:28:47 
 * @history:
 */
@Controller
@RequestMapping(value = "/demo")
public class DemoController {
    @RequestMapping(value = "/get", method = RequestMethod.GET)
    @ResponseBody
    public String queryPaginableChargeOrder() {
        return BizConnecter.getBizData("858001",
            "{\"userId\": \"1233456789\" }");
    }

}
