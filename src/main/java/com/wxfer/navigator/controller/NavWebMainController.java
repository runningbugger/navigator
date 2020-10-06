package com.wxfer.navigator.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author wxfer
 * @since 2020-10-06
 */
@Controller
@RequestMapping("/nav-web-main")
public class NavWebMainController {


    @RequestMapping("/index")
    public String index(ModelMap modelMap) {
        modelMap.addAttribute("name", "wangxf");
        return "navWebMain/index";
    }

}
