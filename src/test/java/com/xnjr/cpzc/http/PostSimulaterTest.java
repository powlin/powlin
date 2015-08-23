/**
 * @Title NetUtilsTest.java 
 * @Package com.ibis.pz.http 
 * @Description 
 * @author miyb  
 * @date 2015-5-12 下午4:32:58 
 * @version V1.0   
 */
package com.xnjr.cpzc.http;

import java.util.Properties;

import org.junit.Test;

/** 
 * @author: miyb 
 * @since: 2015-5-12 下午4:32:58 
 * @history:
 */
public class PostSimulaterTest {
    @Test
    public final void testRequestPostStringByteArray() throws Exception {
        Properties requestProperties = new Properties();
        // 模拟浏览器信息
        requestProperties
            .put(
                "User-Agent",
                "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; TencentTraveler ; .NET CLR 1.1.4322)");
        String responseData = PostSimulater.requestPost(
            "http://120.26.115.3:9999/std-account/account", "XML".getBytes());
        System.err.println(responseData);
    }

    @Test
    public final void testRequestPostForm() throws Exception {
        Properties formProperties = new Properties();
        formProperties.put("code", "858001");
        formProperties.put("json", "{\"userId\": \"13958092437\" }");
        String responseData = PostSimulater.requestPostForm(
            "http://120.26.115.3:9999/std-account/account", formProperties);
        System.err.println(responseData);
    }

}
