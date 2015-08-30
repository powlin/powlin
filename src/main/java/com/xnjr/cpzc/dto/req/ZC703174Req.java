/**
 * @Title ZC703174Req.java 
 * @Package com.xnjr.cpzc.dto.req 
 * @Description 
 * @author xieyj  
 * @date 2015年8月19日 下午7:41:26 
 * @version V1.0   
 */
package com.xnjr.cpzc.dto.req;

/** 
 * 系统用户-列表查询
 * @author: xieyj 
 * @since: 2015年8月19日 下午7:41:26 
 * @history:
 */
public class ZC703174Req {

    // 用户编号
    private String userCode;

    // 用户名称
    private String userName;

    // 状态
    private String status; // 1 normal 2 cancel

    public String getUserCode() {
        return userCode;
    }

    public void setUserCode(String userCode) {
        this.userCode = userCode;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
