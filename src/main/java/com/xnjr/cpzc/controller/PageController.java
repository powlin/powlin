package com.xnjr.cpzc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xnjr.cpzc.base.session.ISessionProvider;
import com.xnjr.cpzc.base.session.SessionUser;

/**
 * 跳转页面Controller
 * 
 * @author zhanggl10620
 * 
 */
@Controller
@RequestMapping(value = "/views")
public class PageController {

    private static final String SESSION_KEY_USER = "user";

    @Autowired
    protected ISessionProvider sessionProvider;

    @RequestMapping(value = "/system/{module}.htm", method = RequestMethod.GET)
    public String systemAction(@PathVariable("module") String module) {
        return "/system/" + module;
    }

    @RequestMapping(value = "/{module}.htm", method = RequestMethod.GET)
    public String indexAction(@PathVariable("module") String module) {
        return module;
    }

    @RequestMapping(value = "/home/{module}.htm", method = RequestMethod.GET)
    public String homeAction(@PathVariable("module") String module) {
        return "home/" + module;
    }

    @RequestMapping(value = "/account/{page}.htm", method = RequestMethod.GET)
    public String accountAction(@PathVariable("page") String page) {
        return "account/" + page;
    }

    @RequestMapping(value = "/trade/{page}.htm", method = RequestMethod.GET)
    public String tradeAction(@PathVariable("page") String page) {
        return "trade/" + page;
    }

    @RequestMapping(value = "/account/{module}/{page}.htm", method = RequestMethod.GET)
    public String accountAction(@PathVariable("module") String module,
            @PathVariable("page") String page) {
        return "account/" + module + "/" + page;
    }

    @RequestMapping(value = "/user/{view}", method = RequestMethod.GET)
    public String userAction(@PathVariable("view") String view) {
        return "user/" + view;
    }

    @RequestMapping(value = "/financing/{page}.htm", method = RequestMethod.GET)
    public String financingAction(@PathVariable("page") String page) {
        return "financing/" + page;
    }

    @RequestMapping(value = "/financing/{module}/{page}.htm", method = RequestMethod.GET)
    public String financingAction(@PathVariable("module") String module,
            @PathVariable("page") String page) {
        return "financing/" + module + "/" + page;
    }

    @RequestMapping(value = "/msg/{page}.htm", method = RequestMethod.GET)
    public String messageAction(@PathVariable("page") String page) {
        return "msg/" + page;
    }

    @RequestMapping(value = "/msg/{module}/{page}.htm", method = RequestMethod.GET)
    public String msgAction(@PathVariable("module") String module,
            @PathVariable("page") String page) {
        return "msg/" + module + "/" + page;
    }

    @RequestMapping(value = "/prompt", method = RequestMethod.GET)
    public String prompt(@PathVariable("view") String view) {
        return "prompt/" + view;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String page() {
        SessionUser user = (SessionUser) sessionProvider
            .getAttribute(SESSION_KEY_USER);
        if (null != user) {
            return "redirect:/home/index.htm";
        }
        return "user/login";
    }

    @RequestMapping(value = "/planning/{page}.htm", method = RequestMethod.GET)
    public String planningAction(@PathVariable("page") String page) {
        return "planning/" + page;
    }

    @RequestMapping(value = "/planning/{module}/{page}.htm", method = RequestMethod.GET)
    public String planning2Action(@PathVariable("module") String module,
            @PathVariable("page") String page) {
        return "planning/" + module + "/" + page;
    }

    @RequestMapping(value = "/heyi/{page}.htm", method = RequestMethod.GET)
    public String heyiPageAction(@PathVariable("page") String page) {
        return "heyi/" + page;
    }

    @RequestMapping(value = "/standard/{page}.htm", method = RequestMethod.GET)
    public String xingxiaPageAction(@PathVariable("page") String page) {
        return "standard/" + page;
    }

    @RequestMapping(value = "/popularize/{page}.htm", method = RequestMethod.GET)
    public String popularizeAction(@PathVariable("page") String page) {
        return "popularize/" + page;
    }

}
