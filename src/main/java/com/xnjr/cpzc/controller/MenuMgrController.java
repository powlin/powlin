package com.xnjr.cpzc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xnjr.cpzc.ao.IMenuAO;
import com.xnjr.cpzc.dto.res.Page;
import com.xnjr.cpzc.dto.res.ZC703633Res;

/**
 * 系统用户模块
 * @author: linyy 
 * @since: 2015年8月26日 下午22:51:04 
 * @history:
 */
@Controller
@RequestMapping(value = "/menumgr")
public class MenuMgrController extends BaseController {

    @Autowired
    protected IMenuAO menuAO;

    // ******** 添加菜单 *****
    @RequestMapping(value = "/addmenu", method = RequestMethod.POST)
    @ResponseBody
    public boolean addmenu(@RequestParam("menuCode") String menuCode,
            @RequestParam("menuName") String menuName,
            @RequestParam("menuUrl") String menuUrl,
            @RequestParam("parentCode") String parentCode,
            @RequestParam("orderNo") String orderNo,
            @RequestParam("remark") String remark) {
        // 添加菜单验证
        ZC703633Res res = menuAO.addMenu(menuCode, menuName, menuUrl,
            parentCode, orderNo, remark);
        return true;
    }

    // ******** 修改菜单 *****
    @RequestMapping(value = "/updatemenu", method = RequestMethod.POST)
    @ResponseBody
    public boolean updatemenu(@RequestParam("menuCode") String menuCode,
            @RequestParam("menuName") String menuName,
            @RequestParam("menuUrl") String menuUrl,
            @RequestParam("parentCode") String parentCode,
            @RequestParam("orderNo") String orderNo,
            @RequestParam("remark") String remark) {
        // 修改菜单验证
        boolean editMenu = menuAO.editMenu(menuCode, menuName, menuUrl,
            parentCode, orderNo, remark);
        return editMenu;
    }

    // ******** 删除菜单 *****
    @RequestMapping(value = "/deletemenu", method = RequestMethod.POST)
    @ResponseBody
    public boolean deletemenu(@RequestParam("menuCodes") String menuCodes) {
        // 删除菜单验证
        if (menuCodes != null) {
            String[] menuCodeArr = menuCodes.split(",");
            for (String menuCode : menuCodeArr) {
                menuAO.dropMenu(menuCode);
            }
        }
        return true;
    }

    // ******** 删除菜单 *****
    @RequestMapping(value = "/querymenu", method = RequestMethod.POST)
    @ResponseBody
    public boolean queryMenus(@RequestParam("start") String start,
            @RequestParam("limit") String limit) {
        Page queryMenuPage = menuAO.queryMenuPage("", "", start, limit, "", "");
        return true;
    }

}
