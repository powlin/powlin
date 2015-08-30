/**
 * @Title SysUserAOImpl.java 
 * @Package com.xnjr.cpzc.ao.impl 
 * @Description 
 * @author xieyj  
 * @date 2015年8月17日 上午10:44:49 
 * @version V1.0   
 */
package com.xnjr.cpzc.ao.impl;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import com.xnjr.cpzc.ao.ISysUserAO;
import com.xnjr.cpzc.dto.req.ZC703176Req;
import com.xnjr.cpzc.dto.res.SuccessRes;
import com.xnjr.cpzc.exception.BizException;
import com.xnjr.cpzc.http.BizConnecter;
import com.xnjr.cpzc.util.JsonUtils;

/**
 * 系统用户模块
 * @author: xieyj 
 * @since: 2015年8月16日 下午2:32:15 
 * @history:
 */
@Service
public class SysUserAOImpl implements ISysUserAO {

    @Override
    public boolean login(String loginName, String loginPwd, String loginIp) {
        if (StringUtils.isBlank(loginName)) {
            throw new BizException("ZC703176", "登录名不能为空");
        }
        if (StringUtils.isBlank(loginPwd)) {
            throw new BizException("ZC703176", "密码不能为空");
        }
        ZC703176Req zc703176Req = new ZC703176Req();
        zc703176Req.setUserCode(loginName);
        zc703176Req.setPassword(loginPwd);
        zc703176Req.setLoginIp(loginIp);
        return BizConnecter.getBizData("703176",
            JsonUtils.object2Json(zc703176Req), SuccessRes.class).isSuccess();
    }
}
