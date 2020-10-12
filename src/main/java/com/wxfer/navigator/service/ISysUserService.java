package com.wxfer.navigator.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.wxfer.navigator.entity.SysUser;

/**
 * <p>
 * 用户表 服务类
 * </p>
 *
 * @author wxfer
 * @since 2020-10-03
 */
public interface ISysUserService extends IService<SysUser> {


    /**
     * 登录
     *
     * @param userName
     * @param password
     * @return
     */
    SysUser login(String userName, String password);

}
