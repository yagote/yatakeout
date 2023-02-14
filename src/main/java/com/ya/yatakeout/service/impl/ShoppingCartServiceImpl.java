package com.ya.yatakeout.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ya.yatakeout.entity.ShoppingCart;
import com.ya.yatakeout.mapper.ShoppingCartMapper;
import com.ya.yatakeout.service.ShoppingCartService;
import org.springframework.stereotype.Service;

/**
 * @author yagote    create 2023/2/14 19:11
 */
@Service
public class ShoppingCartServiceImpl extends ServiceImpl<ShoppingCartMapper, ShoppingCart> implements ShoppingCartService {
}
