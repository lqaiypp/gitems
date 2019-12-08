package com.peng.service;

import com.peng.entity.Emp;

import java.util.List;
import java.util.Map;

/**
 * Created by liuqian on 2019/12/8.
 */
public interface EmpService {
    void save(Emp emp);

    void update(Emp emp);

    void delete(List<String> ids);

    Map<String, Object> findByPage(Integer page, Integer rows);
}
