package com.peng.dao;

import com.peng.entity.Emp;
import tk.mybatis.mapper.additional.idlist.DeleteByIdListMapper;
import tk.mybatis.mapper.common.Mapper;

/**
 * Created by liuqian on 2019/12/8.
 */
public interface EmpDao extends Mapper<Emp>, DeleteByIdListMapper<Emp, String> {
}
