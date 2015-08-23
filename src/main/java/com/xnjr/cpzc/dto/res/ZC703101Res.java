/**
 * @Title ZC703101Res.java 
 * @Package com.xnjr.cpzc.dto.req 
 * @Description 
 * @author xieyj  
 * @date 2015年8月22日 上午7:50:15 
 * @version V1.0   
 */
package com.xnjr.cpzc.dto.res;

/** 
 * 用户登录
 * @author: xieyj 
 * @since: 2015年8月22日 上午7:50:15 
 * @history:
 */
public class ZC703101Res {
    // 用户编号
    private String userId;

    // 账户编号
    private String accountId;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getAccountId() {
        return accountId;
    }

    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }
}
