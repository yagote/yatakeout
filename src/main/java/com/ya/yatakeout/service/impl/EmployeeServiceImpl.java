package com.ya.yatakeout.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ya.yatakeout.entity.Employee;
import com.ya.yatakeout.mapper.EmployeeMapper;
import com.ya.yatakeout.service.EmployeeService;
import org.springframework.stereotype.Service;

/**
 * @author yagote    create 2023/2/11 17:30
 */
@Service
public class EmployeeServiceImpl extends ServiceImpl<EmployeeMapper, Employee> implements EmployeeService {
}
