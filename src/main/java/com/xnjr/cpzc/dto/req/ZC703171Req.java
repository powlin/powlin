/**
 * @Title ZC703171Req.java 
 * @Package com.xnjr.cpzc.dto.req 
 * @Description 
 * @author xieyj  
 * @date 2015年8月19日 下午7:41:26 
 * @version V1.0   
 */
package com.xnjr.cpzc.dto.req;

/** 
 * 系统用户-增加
 * @author: xieyj 
 * @since: 2015年8月19日 下午7:41:26 
 * @history:
 */
public class ZC703171Req {

    // 用户编号
    private String userCode;

    // 用户名称
    private String userName;

    // 密码
    private String password;

    // 创建者
    private String creator;

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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

}
