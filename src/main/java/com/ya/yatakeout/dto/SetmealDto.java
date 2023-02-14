package com.ya.yatakeout.dto;

import com.ya.yatakeout.entity.Setmeal;
import com.ya.yatakeout.entity.SetmealDish;
import lombok.Data;
import java.util.List;

@Data
public class SetmealDto extends Setmeal {

    private List<SetmealDish> setmealDishes;

    private String categoryName;
}
