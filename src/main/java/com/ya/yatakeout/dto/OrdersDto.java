package com.ya.yatakeout.dto;

import com.ya.yatakeout.entity.OrderDetail;
import com.ya.yatakeout.entity.Orders;
import lombok.Data;

import java.util.List;

/**
 * 订单数据传输对象：继承了实体类Orders，又扩展了一些属性
 * @author yagote    create 2023/2/15 11:19
 */
@Data
public class OrdersDto extends Orders {
    private String userName;

    private String phone;

    private String address;

    private String consignee;

    private List<OrderDetail> orderDetails;
}
