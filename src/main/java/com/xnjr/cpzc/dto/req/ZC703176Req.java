/**
 * @Title ZC703176Req.java 
 * @Package com.xnjr.cpzc.dto.req 
 * @Description 
 * @author xieyj  
 * @date 2015年8月19日 下午7:41:26 
 * @version V1.0   
 */
package com.xnjr.cpzc.dto.req;

/** 
 * 系统用户-登录
 * @author: xieyj 
 * @since: 2015年8月19日 下午7:41:26 
 * @history:
 */
public class ZC703176Req {

    // 用户编号
    private String userCode;

    // 密码
    private String password;

    // 登录iP
    private String loginIp;

    public String getLoginIp() {
        return loginIp;
    }

    public void setLoginIp(String loginIp) {
        this.loginIp = loginIp;
    }

    public String getUserCode() {
        return userCode;
    }

    public void setUserCode(String userCode) {
        this.userCode = userCode;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
