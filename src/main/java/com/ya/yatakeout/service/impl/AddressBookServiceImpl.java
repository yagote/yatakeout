package com.ya.yatakeout.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ya.yatakeout.entity.AddressBook;
import com.ya.yatakeout.mapper.AddressBookMapper;
import com.ya.yatakeout.service.AddressBookService;
import org.springframework.stereotype.Service;

/**
 * @author yagote    create 2023/2/14 17:02
 */@Service
public class AddressBookServiceImpl extends ServiceImpl<AddressBookMapper, AddressBook> implements AddressBookService {
}
