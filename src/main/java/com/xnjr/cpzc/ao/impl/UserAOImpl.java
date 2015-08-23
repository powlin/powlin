/**
 * @Title UserAOImpl.java 
 * @Package com.xnjr.cpzc.ao.impl 
 * @Description 
 * @author xieyj  
 * @date 2015年8月17日 上午10:44:49 
 * @version V1.0   
 */
package com.xnjr.cpzc.ao.impl;

import org.springframework.stereotype.Service;

import com.xnjr.cpzc.ao.IUserAO;
import com.xnjr.cpzc.dto.res.ZC703101Res;
import com.xnjr.cpzc.dto.res.ZC703201Res;
import com.xnjr.cpzc.http.BizConnecter;

/**
 * 用户模块
 * @author: xieyj 
 * @since: 2015年8月16日 下午2:32:15 
 * @history:
 */
@Service
public class UserAOImpl implements IUserAO {

    @Override
    public ZC703101Res login(String loginName, String loginPwd, String loginIp) {
        ZC703201Res zc703201Res = BizConnecter.getBizData("703201",
            com.xnjr.cpzc.util.JsonUtils.string2Json("userId", "1234567890"),
            ZC703201Res.class);
        ZC703101Res res = new ZC703101Res();
        res.setUserId("123456789");
        res.setAccountId(zc703201Res.getAccountNumber());
        return res;
    }
}
