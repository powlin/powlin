/**
 * @Title EMsgType.java 
 * @Package com.ibis.pz.enums 
 * @Description 
 * @author miyb  
 * @date 2015-5-2 下午5:25:37 
 * @version V1.0   
 */
package com.xnjr.cpzc.enums;

/** 
 * @author: miyb 
 * @since: 2015-5-2 下午5:25:37 
 * @history:
 */
public enum EMsgType {
    REGISTER("1", "注册"), WITHDRAW("2", "取现"), SETTRADEPWD("3", "设置交易密码"), CHANGEMOBILE(
            "4", "修改手机号码"), FINDLOGINPWD("5", "找回登陆密码"), FINDTRADEPWD("6",
            "找回交易密码"), LOAN("7", "借款"), SENDTRADEACCOUNT("8", "发送交易账号"), OSS(
            "99", "后台人工添加");

    EMsgType(String code, String value) {
        this.code = code;
        this.value = value;
    }

    private String code;

    private String value;

    public String getCode() {
        return code;
    }

    public String getValue() {
        return value;
    }
}
