/**
 * @Title ISysUserAO.java 
 * @Package com.xnjr.cpzc.ao 
 * @Description 
 * @author xieyj  
 * @date 2015年8月25日 下午3:07:46 
 * @version V1.0   
 */
package com.xnjr.cpzc.ao;

/** 
 * 系统用户
 * @author: xieyj 
 * @since: 2015年8月25日 下午3:07:46 
 * @history:
 */
public interface ISysUserAO {

    /**
     * 用户登录
     * @param loginName 用户名
     * @param loginPwd 用户密码
     * @param loginIp ip地址
     * @return 
     * @create: 2015年8月17日 上午11:22:16 xieyj
     * @history:
     */
    public boolean login(String loginName, String loginPwd, String loginIp);

}
