package com.wxfer.navigator.controller;

import com.wxfer.navigator.entity.SysUser;
import com.wxfer.navigator.service.ISysUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

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
     * 新增
     *
     * @author wangxf
     * @date 2020/10/06
     **/
    @RequestMapping("/insert")
    public String insert(ModelMap modelMap, SysUser sysUser) {
        boolean isSuccess = iSysUserService.save(sysUser);
        if (isSuccess) {
            //注册成功
            return "navWebMain/index";
        } else {
            //注册失败
            modelMap.addAttribute("status", "失败");
            return "sysUser/add";
        }
    }


}
