/**
 * @Title IMenuAO.java 
 * @Package com.ibis.pz.ao 
 * @Description 
 * @author miyb  
 * @date 2015-5-14 上午9:16:37 
 * @version V1.0   
 */
package com.xnjr.cpzc.ao;

import java.util.List;

import com.xnjr.cpzc.dto.res.Page;
import com.xnjr.cpzc.dto.res.ZC703632Res;
import com.xnjr.cpzc.dto.res.ZC703633Res;

/** 
 * @author: miyb 
 * @since: 2015-5-14 上午9:16:37 
 * @history:
 */
public interface IMenuAO {

    /**
     * 添加菜单
     * @param menuCode
     * @param menuName
     * @param menuUrl
     * @param parentCode
     * @param orderNo
     * @param remark 
     * @create: 2015年3月14日 下午1:37:52 茜茜
     * @history:
     */
    public ZC703633Res addMenu(String menuCode, String menuName,
            String menuUrl, String parentCode, String orderNo, String remark);

    /**
     * 删除菜单
     * @param menuCode 
     * @create: 2015年3月14日 下午1:38:06 茜茜
     * @history:
     */
    public boolean dropMenu(String menuCode);

    /**
     * 分页查询菜单
     * @param menuCode
     * @param parentCode
     * @return 
     * @create: 2015年3月18日 下午8:47:40 茜茜
     * @history:
     */
    @SuppressWarnings("rawtypes")
    public Page queryMenuPage(String menuCode, String parentCode, String start,
            String limit, String orderColumn, String orderDir);

    /**
     * 查询菜单列表
     * @param menuCode
     * @param parentCode
     * @return 
     * @create: 2015年3月18日 下午8:47:40 茜茜
     * @history:
     */
    public List<ZC703632Res> queryMenuList(String menuCode, String parentCode);

    /**
     * @param menuCode
     * @param menuName
     * @param menuUrl
     * @param parentCode
     * @param orderNo
     * @param remark 
     * @create: 2015年4月18日 上午12:23:47 茜茜
     * @history:
     */
    public boolean editMenu(String menuCode, String menuName, String menuUrl,
            String parentCode, String orderNo, String remark);

}
