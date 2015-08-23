package com.xnjr.cpzc.dto.res;

import java.io.Serializable;

/**
 * 分页查询公共参数
 * @author: xieyj 
 * @since: 2015-6-4 下午9:43:00 
 * @history:
 */
public abstract class ABaseDO implements Serializable {

    /** 
     * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
     */
    private static final long serialVersionUID = -1529928645166513824L;

    // 分页
    private String start;

    private String limit;

    // 排序字段
    private String orderColumn;

    // 排序方向
    private String orderDir;

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
