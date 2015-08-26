/**
 * @Title Li779035Res.java 
 * @Package com.ibis.account.dto.res 
 * @Description 
 * @author miyb  
 * @date 2015-5-20 上午7:39:55 
 * @version V1.0   
 */
package com.xnjr.cpzc.dto.res;

/** 
 * @author: miyb 
 * @since: 2015-5-20 上午7:39:55 
 * @history:
 */
public class ZC703635Res {
    // 是否成功
    private boolean isSuccess;

    public ZC703635Res() {
    }

    public ZC703635Res(boolean isSuccess) {
        this.isSuccess = isSuccess;
    }

    public boolean getIsSuccess() {
        return isSuccess;
    }

    public void setIsSuccess(boolean isSuccess) {
        this.isSuccess = isSuccess;
    }
}
