/**
 * @Title Li779042Req.java 
 * @Package com.ibis.account.dto.req 
 * @Description 
 * @author miyb  
 * @date 2015-5-20 上午7:41:41 
 * @version V1.0   
 */
package com.xnjr.cpzc.dto.req;

/** 
 * @author: miyb 
 * @since: 2015-5-20 上午7:41:41 
 * @history:
 */
public class ZC703642Req {
    // 角色编号
    private String roleCode;

    // 角色等级
    private String roleLevel;

    // 创建起始时间(YYYY-MM-DD)
    private String dateStart;

    // 创建终止时间(YYYY-MM-DD)
    private String dateEnd;

    public String getRoleCode() {
        return roleCode;
    }

    public void setRoleCode(String roleCode) {
        this.roleCode = roleCode;
    }

    public String getRoleLevel() {
        return roleLevel;
    }

    public void setRoleLevel(String roleLevel) {
        this.roleLevel = roleLevel;
    }

    public String getDateStart() {
        return dateStart;
    }

    public void setDateStart(String dateStart) {
        this.dateStart = dateStart;
    }

    public String getDateEnd() {
        return dateEnd;
    }

    public void setDateEnd(String dateEnd) {
        this.dateEnd = dateEnd;
    }

}
