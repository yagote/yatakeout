package com.ya.yatakeout.dto;

import com.ya.yatakeout.entity.Dish;
import com.ya.yatakeout.entity.DishFlavor;
import lombok.Data;
import java.util.ArrayList;
import java.util.List;

/**
 * 菜品数据传输对象：继承了实体类Dish，又扩展了一些属性
 */
@Data
public class DishDto extends Dish {

    private List<DishFlavor> flavors = new ArrayList<>();

    private String categoryName;

    private Integer copies;
}
