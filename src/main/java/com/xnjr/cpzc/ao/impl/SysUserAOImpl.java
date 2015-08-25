/**
 * @Title SysUserAOImpl.java 
 * @Package com.xnjr.cpzc.ao.impl 
 * @Description 
 * @author xieyj  
 * @date 2015年8月17日 上午10:44:49 
 * @version V1.0   
 */
package com.xnjr.cpzc.ao.impl;

import org.springframework.stereotype.Service;

import com.xnjr.cpzc.ao.ISysUserAO;
import com.xnjr.cpzc.dto.res.ZC703501Res;

/**
 * 系统用户模块
 * @author: xieyj 
 * @since: 2015年8月16日 下午2:32:15 
 * @history:
 */
@Service
public class SysUserAOImpl implements ISysUserAO {

    @Override
    public ZC703501Res login(String loginName, String loginPwd, String loginIp) {
        // 调用接口
        ZC703501Res res = new ZC703501Res();
        res.setUserId("123456789");
        return res;
    }
}
