package com.wxfer.navigator.service.impl;

import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.wxfer.navigator.entity.SysUser;
import com.wxfer.navigator.mapper.SysUserMapper;
import com.wxfer.navigator.service.ISysUserService;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户表 服务实现类
 * </p>
 *
 * @author wxfer
 * @since 2020-10-03
 */
@Service
public class SysUserServiceImpl extends ServiceImpl<SysUserMapper, SysUser> implements ISysUserService {

    @Override
    public SysUser login(String userName, String password) {
        UpdateWrapper<SysUser> queryWrapper = new UpdateWrapper<>();
        queryWrapper.eq("user_name", userName);
        queryWrapper.eq("password", password);
        SysUser sysuser = getBaseMapper().selectOne(queryWrapper);
        System.out.println(sysuser);
        return sysuser;
    }
}
