/**
 * @Title PZ001123Res.java 
 * @Package com.ibis.pz.dto.res 
 * @Description 
 * @author miyb  
 * @date 2015-5-25 下午1:35:57 
 * @version V1.0   
 */
package com.xnjr.cpzc.dto.res;

/** 
 * @author: miyb 
 * @since: 2015-5-25 下午1:35:57 
 * @history:
 */
public class SuccessRes {
    private boolean isSuccess;

    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isSuccess() {
        return isSuccess;
    }

    public void setSuccess(boolean isSuccess) {
        this.isSuccess = isSuccess;
    }
}
