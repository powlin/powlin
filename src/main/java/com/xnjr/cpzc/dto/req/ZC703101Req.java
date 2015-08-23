/**
 * @Title ZC703101.java 
 * @Package com.xnjr.cpzc.dto.req 
 * @Description 
 * @author xieyj  
 * @date 2015年8月22日 上午7:50:15 
 * @version V1.0   
 */
package com.xnjr.cpzc.dto.req;

/** 
 * @author: xieyj 
 * @since: 2015年8月22日 上午7:50:15 
 * @history:
 */
public class ZC703101Req {
    // 登录用户名
    private String loginName;

    // 登录密码
    private String loginPwd;

    // 登录IP
    private String loginIp;

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getLoginPwd() {
        return loginPwd;
    }

    public void setLoginPwd(String loginPwd) {
        this.loginPwd = loginPwd;
    }

    public String getLoginIp() {
        return loginIp;
    }

    public void setLoginIp(String loginIp) {
        this.loginIp = loginIp;
    }
}
