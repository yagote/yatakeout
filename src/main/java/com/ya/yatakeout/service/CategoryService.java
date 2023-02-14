package com.ya.yatakeout.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ya.yatakeout.entity.Category;

public interface CategoryService extends IService<Category> {
    public  void remove(Long ids);
}
