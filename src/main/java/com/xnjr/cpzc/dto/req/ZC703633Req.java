/**
 * @Title Li779033Req.java 
 * @Package com.ibis.account.dto.req 
 * @Description 
 * @author miyb  
 * @date 2015-5-20 上午7:38:38 
 * @version V1.0   
 */
package com.xnjr.cpzc.dto.req;

/** 
 * @author: miyb 
 * @since: 2015-5-20 上午7:38:38 
 * @history:
 */
public class ZC703633Req {
    // 菜单编号
    private String menuCode;

    // 菜单名称
    private String menuName;

    // 菜单链接地址
    private String menuUrl;

    // 父菜单编号
    private String parentCode;

    // 菜单位置编号
    private String orderNo;

    // 备注
    private String remark;

    public String getMenuCode() {
        return menuCode;
    }

    public void setMenuCode(String menuCode) {
        this.menuCode = menuCode;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public String getMenuUrl() {
        return menuUrl;
    }

    public void setMenuUrl(String menuUrl) {
        this.menuUrl = menuUrl;
    }

    public String getParentCode() {
        return parentCode;
    }

    public void setParentCode(String parentCode) {
        this.parentCode = parentCode;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

}
