package com.wxfer.navigator.controller;

import com.alibaba.fastjson.JSONObject;
import com.wxfer.navigator.entity.SysUser;
import com.wxfer.navigator.service.ISysUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * <p>
 * 用户表 前端控制器
 * </p>
 *
 * @author wxfer
 * @since 2020-10-03
 */
@Controller
@RequestMapping("/sys-user")
public class SysUserController {
    @Resource
    private ISysUserService iSysUserService;

    /**
     * 注册
     *
     * @author wangxf
     * @date 2020/10/06
     **/
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    @ResponseBody
    public Boolean register(@RequestParam("regInfo") String sysUserStr) {
        JSONObject jsonObject = JSONObject.parseObject(sysUserStr);
        SysUser sysUser = JSONObject.toJavaObject(jsonObject, SysUser.class);
        System.out.println(sysUser.getUserName());
        boolean isSuccess = iSysUserService.save(sysUser);
        if (isSuccess) {
            //注册成功
        } else {
            //注册失败
        }
        return isSuccess;
    }


    /**
     * 登录
     *
     * @param sysUserStr
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    @ResponseBody
    public SysUser login(@RequestParam("loginInfo") String sysUserStr) {
        JSONObject jsonObject = JSONObject.parseObject(sysUserStr);
        SysUser sysUser = JSONObject.toJavaObject(jsonObject, SysUser.class);

        SysUser sysUser1 = iSysUserService.login(sysUser.getUserName(), sysUser.getPassword());
        //登录成功使用token，用redis

        return sysUser1;
    }


    @RequestMapping("/loginPage")
    public String login() {
        return "sysUser/login";
    }


    @RequestMapping("/registerPage")
    public String register() {
        return "sysUser/register";
    }


}
