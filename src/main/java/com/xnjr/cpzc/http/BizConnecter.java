/**
 * @Title BizConnecter.java 
 * @Package com.ibis.pz.http 
 * @Description 
 * @author miyb  
 * @date 2015-5-12 下午9:44:59 
 * @version V1.0   
 */
package com.xnjr.cpzc.http;

import java.util.Properties;

import com.xnjr.cpzc.exception.BizException;
import com.xnjr.cpzc.util.JsonUtils;
import com.xnjr.cpzc.util.RegexUtils;

/** 
 * @author: miyb 
 * @since: 2015-5-12 下午9:44:59 
 * @history:
 */
public class BizConnecter {
    public static final String YES = "0";

    public static final String ACCOUNT_POST_URL = "http://115.29.140.31:8087/cpzc/api";

    public static final String POST_URL = "http://115.29.140.31:8087/cpzc/api";

    public static <T> T getBizData(String code, String json, Class<T> clazz) {
        String data = null;
        try {
            Properties formProperties = new Properties();
            formProperties.put("code", code);
            formProperties.put("json", json);
            System.out.println(json);
            String resJson = PostSimulater.requestPostForm(getPostUrl(code),
                formProperties);
            // 开始解析json
            String errorCode = RegexUtils.find(resJson, "errorCode\":\"(.+?)\"",
                1);
            if (YES.equalsIgnoreCase(errorCode)) {
                data = RegexUtils.find(resJson, "data\":(.*)\\}", 1);
            } else {
                String errorInfo = RegexUtils.find(resJson,
                    "errorInfo\":\"(.+?)\"", 1);
                System.out
                    .println("errorCode:" + errorCode + "<" + errorInfo + ">");
                throw new BizException("JD000001", errorInfo);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return JsonUtils.json2Bean(data, clazz);
    }

    public static String getBizData(String code, String json) {
        String data = null;
        try {
            Properties formProperties = new Properties();
            formProperties.put("code", code);
            formProperties.put("json", json);
            System.out.println(json);
            String resJson = PostSimulater.requestPostForm(getPostUrl(code),
                formProperties);
            // 开始解析json
            String errorCode = RegexUtils.find(resJson, "errorCode\":\"(.+?)\"",
                1);
            if (YES.equalsIgnoreCase(errorCode)) {
                data = RegexUtils.find(resJson, "data\":(.*)\\}", 1);
            } else {
                String errorInfo = RegexUtils.find(resJson,
                    "errorInfo\":\"(.+?)\"", 1);
                System.out
                    .println("errorCode:" + errorCode + "<" + errorInfo + ">");
                throw new BizException("JD000001", errorInfo);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return data;
    }

    public static String getPostUrl(String code) {
        String reqUrl = POST_URL;
        if (code.contains("0019") || code.contains("0090")
                || code.contains("858") || code.contains("779")) {
            reqUrl = ACCOUNT_POST_URL;
        } else {
            reqUrl = POST_URL;
        }
        return reqUrl;
    }
}
