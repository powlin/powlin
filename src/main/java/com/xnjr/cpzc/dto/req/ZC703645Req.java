/**
 * @Title Li779045Req.java 
 * @Package com.ibis.account.dto.req 
 * @Description 
 * @author miyb  
 * @date 2015-5-20 上午7:42:07 
 * @version V1.0   
 */
package com.xnjr.cpzc.dto.req;

/** 
 * @author: miyb 
 * @since: 2015-5-20 上午7:42:07 
 * @history:
 */
public class ZC703645Req {

    // 角色编号
    private String roleCode;

    // 角色名称
    private String roleName;

    // 角色等级
    private String roleLevel;

    // 角色更新人
    private String updater;

    // 备注
    private String remark;

    public String getRoleCode() {
        return roleCode;
    }

    public void setRoleCode(String roleCode) {
        this.roleCode = roleCode;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getRoleLevel() {
        return roleLevel;
    }

    public void setRoleLevel(String roleLevel) {
        this.roleLevel = roleLevel;
    }

    public String getUpdater() {
        return updater;
    }

    public void setUpdater(String updater) {
        this.updater = updater;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

}
