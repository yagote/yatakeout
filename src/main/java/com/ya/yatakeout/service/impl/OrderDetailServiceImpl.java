package com.ya.yatakeout.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ya.yatakeout.entity.OrderDetail;
import com.ya.yatakeout.mapper.OrderDetailMapper;
import com.ya.yatakeout.service.OrderDetailService;
import org.springframework.stereotype.Service;

/**
 * @author yagote    create 2023/2/14 20:23
 */
@Service
public class OrderDetailServiceImpl extends ServiceImpl<OrderDetailMapper, OrderDetail> implements OrderDetailService {

}
