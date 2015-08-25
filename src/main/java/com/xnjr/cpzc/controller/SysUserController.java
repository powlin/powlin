package com.xnjr.cpzc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xnjr.cpzc.ao.ISysUserAO;
import com.xnjr.cpzc.base.session.SessionUser;
import com.xnjr.cpzc.dto.res.ZC703501Res;

/**
 * 系统用户模块
 * @author: xieyj 
 * @since: 2015年8月16日 下午1:41:04 
 * @history:
 */
@Controller
@RequestMapping(value = "/sysUser")
public class SysUserController extends BaseController {

    @Autowired
    protected ISysUserAO sysUserAO;

    // ******** 用户登录 *****
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public boolean doLogin(@RequestParam("login_name") String loginName,
            @RequestParam("login_pwd") String loginPwd) {
        // 校验用户名密码
        ZC703501Res res = sysUserAO.login(loginName, loginPwd, getRemoteHost());
        // 创建session
        sessionProvider.setUserDetail(new SessionUser(res.getUserId()));
        return true;
    }
}
