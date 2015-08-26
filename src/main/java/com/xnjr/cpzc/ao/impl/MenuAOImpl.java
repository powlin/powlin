/**
 * @Title MenuAOImpl.java 
 * @Package com.ibis.pz.ao.impl 
 * @Description 
 * @author miyb  
 * @date 2015-5-14 上午10:22:25 
 * @version V1.0   
 */
package com.xnjr.cpzc.ao.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.xnjr.cpzc.ao.IMenuAO;
import com.xnjr.cpzc.dto.req.ZC703631Req;
import com.xnjr.cpzc.dto.req.ZC703632Req;
import com.xnjr.cpzc.dto.req.ZC703633Req;
import com.xnjr.cpzc.dto.req.ZC703635Req;
import com.xnjr.cpzc.dto.res.Page;
import com.xnjr.cpzc.dto.res.SuccessRes;
import com.xnjr.cpzc.dto.res.ZC703632Res;
import com.xnjr.cpzc.dto.res.ZC703633Res;
import com.xnjr.cpzc.exception.BizException;
import com.xnjr.cpzc.http.BizConnecter;
import com.xnjr.cpzc.util.JsonUtils;

/** 
 * @author: miyb 
 * @since: 2015-5-14 上午10:22:25 
 * @history:
 */
@Service
public class MenuAOImpl implements IMenuAO {

    /** 
     * @see com.ibis.pz.ao.IMenuAO#addMenu(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String)
     */
    @Override
    public ZC703633Res addMenu(String menuCode, String menuName,
            String menuUrl, String parentCode, String orderNo, String remark) {
        if (StringUtils.isBlank(menuCode)) {
            throw new BizException("ZC703633", "菜单编号不能为空");
        }
        if (StringUtils.isBlank(menuName)) {
            throw new BizException("ZC703633", "菜单名称不能为空");
        }
        if (StringUtils.isBlank(menuUrl)) {
            throw new BizException("ZC703633", "菜单URL不能为空");
        }
        if (StringUtils.isBlank(orderNo)) {
            throw new BizException("ZC703633", "菜单顺序号不能为空");
        }

        ZC703633Req zc703633Req = new ZC703633Req();
        zc703633Req.setMenuCode(menuCode);
        zc703633Req.setMenuName(menuName);
        zc703633Req.setMenuUrl(menuUrl);
        zc703633Req.setParentCode(parentCode);
        zc703633Req.setOrderNo(orderNo);
        zc703633Req.setRemark(remark);

        return BizConnecter.getBizData("703633",
            JsonUtils.object2Json(zc703633Req), ZC703633Res.class);
    }

    /** 
     * @see com.ibis.pz.ao.IMenuAO#dropMenu(java.lang.String)
     */
    @Override
    public boolean dropMenu(String menuCode) {
        if (StringUtils.isBlank(menuCode)) {
            throw new BizException("ZC703634", "菜单编号不能为空");
        }

        return BizConnecter.getBizData("703634",
            JsonUtils.string2Json("menuCode", menuCode), SuccessRes.class)
            .isSuccess();
    }

    /** 
     * @see com.ibis.pz.ao.IMenuAO#queryMenuList(java.lang.String, java.lang.String)
     */
    @SuppressWarnings("rawtypes")
    @Override
    public Page queryMenuPage(String menuCode, String parentCode, String start,
            String limit, String orderColumn, String orderDir) {
        ZC703631Req zc703631Req = new ZC703631Req();
        zc703631Req.setMenuCode(menuCode);
        zc703631Req.setParentCode(parentCode);
        zc703631Req.setStart(start);
        zc703631Req.setLimit(limit);
        zc703631Req.setOrderColumn(orderColumn);
        zc703631Req.setOrderDir(orderDir);
        String jsonStr = BizConnecter.getBizData("703631",
            JsonUtils.object2Json(zc703631Req));
        return JsonUtils.json2Bean(jsonStr, Page.class);
    }

    /** 
     * @see com.ibis.pz.ao.IMenuAO#queryMenuList(java.lang.String, java.lang.String)
     */
    @Override
    public List<ZC703632Res> queryMenuList(String menuCode, String parentCode) {
        ZC703632Req zc703632Req = new ZC703632Req();
        zc703632Req.setMenuCode(menuCode);
        zc703632Req.setParentCode(parentCode);
        String jsonStr = BizConnecter.getBizData("703632",
            JsonUtils.object2Json(zc703632Req));
        Gson gson = new Gson();
        return gson.fromJson(jsonStr, new TypeToken<List<ZC703632Req>>() {
        }.getType());
    }

    /** 
     * @see com.ibis.pz.ao.IMenuAO#editMenu(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String)
     */
    @Override
    public boolean editMenu(String menuCode, String menuName, String menuUrl,
            String parentCode, String orderNo, String remark) {
        if (StringUtils.isBlank(menuCode)) {
            throw new BizException("ZC703635", "菜单编号不能为空");
        }
        if (StringUtils.isBlank(menuName)) {
            throw new BizException("ZC703635", "菜单名称不能为空");
        }
        if (StringUtils.isBlank(menuUrl)) {
            throw new BizException("ZC703635", "菜单URL不能为空");
        }
        if (StringUtils.isBlank(orderNo)) {
            throw new BizException("ZC703635", "菜单顺序号不能为空");
        }

        ZC703635Req zc703635Req = new ZC703635Req();
        zc703635Req.setMenuCode(menuCode);
        zc703635Req.setMenuName(menuName);
        zc703635Req.setMenuUrl(menuUrl);
        zc703635Req.setParentCode(parentCode);
        zc703635Req.setOrderNo(orderNo);
        zc703635Req.setRemark(remark);

        return BizConnecter.getBizData("703635",
            JsonUtils.object2Json(zc703635Req), SuccessRes.class).isSuccess();
    }
}
