package com.ya.yatakeout.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ya.yatakeout.entity.Orders;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author yagote    create 2023/2/14 20:18
 */
@Mapper
public interface OrderMapper extends BaseMapper<Orders> {
}
