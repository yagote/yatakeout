package com.ya.yatakeout.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ya.yatakeout.entity.Orders;

/**
 * @author yagote    create 2023/2/14 20:19
 */
public interface OrderService extends IService<Orders> {

    /**
     * 用户下单
     * @param orders
     */
    public void submit(Orders orders);
}
