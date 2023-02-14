package com.ya.yatakeout.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ya.yatakeout.entity.Employee;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author yagote    create 2023/2/11 17:26
 */
@Mapper
public interface EmployeeMapper extends BaseMapper<Employee> { //继承了BaseMapper，已经有常见的增删改查了

}
