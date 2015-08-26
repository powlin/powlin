/**
 * @Title Li779044Res.java 
 * @Package com.ibis.account.dto.res 
 * @Description 
 * @author miyb  
 * @date 2015-5-20 上午7:41:01 
 * @version V1.0   
 */
package com.xnjr.cpzc.dto.res;

/** 
 * @author: miyb 
 * @since: 2015-5-20 上午7:41:01 
 * @history:
 */
public class ZC703644Res {
    // 是否成功
    private boolean isSuccess;

    public ZC703644Res() {
    }

    public ZC703644Res(boolean isSuccess) {
        this.isSuccess = isSuccess;
    }

    public boolean getIsSuccess() {
        return isSuccess;
    }

    public void setIsSuccess(boolean isSuccess) {
        this.isSuccess = isSuccess;
    }
}
