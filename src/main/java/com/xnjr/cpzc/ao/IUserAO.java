package com.xnjr.cpzc.ao;

import com.xnjr.cpzc.dto.res.ZC703101Res;

/**
 * 用户模块
 * @author: xieyj 
 * @since: 2015年8月16日 下午1:43:41 
 * @history:
 */
public interface IUserAO {

    /**
     * 用户登录
     * @param loginName 用户名
     * @param loginPwd 用户密码
     * @param loginIp ip地址
     * @return 
     * @create: 2015年8月17日 上午11:22:16 xieyj
     * @history:
     */
    public ZC703101Res login(String loginName, String loginPwd, String loginIp);

}
