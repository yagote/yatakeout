package com.ya.yatakeout.dto;

import com.ya.yatakeout.entity.Setmeal;
import com.ya.yatakeout.entity.SetmealDish;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import java.util.List;

/**
 * 套餐数据传输对象：继承了实体类Setmeal，又扩展了一些属性
 */
@Data
@ApiModel("套餐Dto")     //设置接口文档
public class SetmealDto extends Setmeal {

    private List<SetmealDish> setmealDishes;

    private String categoryName;
}
