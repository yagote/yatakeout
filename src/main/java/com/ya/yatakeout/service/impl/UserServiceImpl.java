package com.ya.yatakeout.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ya.yatakeout.entity.User;
import com.ya.yatakeout.mapper.UserMapper;
import com.ya.yatakeout.service.UserService;
import org.springframework.stereotype.Service;

/**
 * @author yagote    create 2023/2/14 13:49
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {
}