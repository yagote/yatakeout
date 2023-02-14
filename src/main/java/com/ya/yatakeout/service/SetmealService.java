package com.ya.yatakeout.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ya.yatakeout.dto.SetmealDto;
import com.ya.yatakeout.entity.Setmeal;

import java.util.List;

/**
 * @author yagote    create 2023/2/13 11:55
 */
public interface SetmealService extends IService<Setmeal> {
    /**
     * 新增套餐，同时需要保存套餐和菜品的关联关系
     * @param setmealDto
     */
    public void saveWithDish(SetmealDto setmealDto);

    /**
     * 删除套餐，同时需要删除套餐和菜品的关联数据
     * @param ids
     */
    public void removeWithDish(List<Long> ids);

}
