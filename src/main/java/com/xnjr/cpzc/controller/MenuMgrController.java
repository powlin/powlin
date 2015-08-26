package com.xnjr.cpzc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xnjr.cpzc.ao.IMenuAO;
import com.xnjr.cpzc.dto.res.ZC703633Res;

/**
 * 系统用户模块
 * @author: linyy 
 * @since: 2015年8月26日 下午22:51:04 
 * @history:
 */
@Controller
@RequestMapping(value = "/menumgr")
public class MenuMgrController extends BaseController {

    @Autowired
    protected IMenuAO menuAO;

    // ******** 用户登录 *****
    @RequestMapping(value = "/addmenu", method = RequestMethod.POST)
    @ResponseBody
    public boolean doLogin(@RequestParam("menuCode") String menuCode,
            @RequestParam("menuName") String menuName,
            @RequestParam("menuUrl") String menuUrl,
            @RequestParam("parentCode") String parentCode,
            @RequestParam("orderNo") String orderNo,
            @RequestParam("remark") String remark) {
        // 校验用户名密码
        ZC703633Res res = menuAO.addMenu(menuCode, menuName, menuUrl,
            parentCode, orderNo, remark);
        // 创建session
        // sessionProvider.setUserDetail(new SessionUser(res.getUserId()));
        return true;
    }
}
