/**
 * @Title Li779056Req.java 
 * @Package com.ibis.account.dto.req 
 * @Description 
 * @author miyb  
 * @date 2015-5-20 下午2:02:49 
 * @version V1.0   
 */
package com.xnjr.cpzc.dto.req;

/** 
 * @author: miyb 
 * @since: 2015-5-20 下午2:02:49 
 * @history:
 */
public class ZC703656Req {
    // 主键编号
    private String id;

    // 用户编号
    private String userId;

    // 角色编号
    private String roleCode;

    // 更新人
    private String updater;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getRoleCode() {
        return roleCode;
    }

    public void setRoleCode(String roleCode) {
        this.roleCode = roleCode;
    }

    public String getUpdater() {
        return updater;
    }

    public void setUpdater(String updater) {
        this.updater = updater;
    }

}
