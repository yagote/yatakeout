package com.ya.yatakeout.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ya.yatakeout.entity.User;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author yagote    create 2023/2/14 13:48
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {
}