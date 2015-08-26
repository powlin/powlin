/**
 * @Title ZC703631Req.java 
 * @Package com.xnjr.cpzc.dto.req 
 * @Description 
 * @author miyb  
 * @date 2015-5-20 上午7:38:16 
 * @version V1.0   
 */
package com.xnjr.cpzc.dto.req;

/** 
 * @author: miyb 
 * @since: 2015-5-20 上午7:38:16 
 * @history:
 */
public class ZC703631Req {
    // 菜单编号
    private String menuCode;

    // 父菜单编号
    private String parentCode;

    private String start;

    private String limit;

    // 分页字段
    private String orderColumn;

    // 分页方向
    private String orderDir;

    public String getMenuCode() {
        return menuCode;
    }

    public void setMenuCode(String menuCode) {
        this.menuCode = menuCode;
    }

    public String getParentCode() {
        return parentCode;
    }

    public void setParentCode(String parentCode) {
        this.parentCode = parentCode;
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getLimit() {
        return limit;
    }

    public void setLimit(String limit) {
        this.limit = limit;
    }

    public String getOrderColumn() {
        return orderColumn;
    }

    public void setOrderColumn(String orderColumn) {
        this.orderColumn = orderColumn;
    }

    public String getOrderDir() {
        return orderDir;
    }

    public void setOrderDir(String orderDir) {
        this.orderDir = orderDir;
    }

}
