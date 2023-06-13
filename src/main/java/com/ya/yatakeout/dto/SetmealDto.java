package com.ya.yatakeout.dto;

import com.ya.yatakeout.entity.Setmeal;
import com.ya.yatakeout.entity.SetmealDish;
import lombok.Data;
import java.util.List;

/**
 * 套餐数据传输对象：继承了实体类Setmeal，又扩展了一些属性
 */
@Data
public class SetmealDto extends Setmeal {

    private List<SetmealDish> setmealDishes;

    private String categoryName;
}
