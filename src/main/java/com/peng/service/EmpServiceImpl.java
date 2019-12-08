package com.peng.service;

import com.peng.dao.EmpDao;
import com.peng.entity.Emp;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Created by liuqian on 2019/12/8.
 */
@Service
@Transactional(propagation = Propagation.REQUIRED)
public class EmpServiceImpl implements EmpService {
    @Autowired
    private EmpDao empDao;

    @Override
    public void save(Emp emp) {
        emp.setId(UUID.randomUUID().toString());
        empDao.insertSelective(emp);
    }

    @Override
    public void update(Emp emp) {
        empDao.updateByPrimaryKeySelective(emp);
    }


    @Override
    public void delete(List<String> ids) {
        empDao.deleteByIdList(ids);
    }

    @Override
    public Map<String, Object> findByPage(Integer page, Integer rows) {
        List<Emp> emps = empDao.selectByRowBounds(new Emp(), new RowBounds((page - 1) * rows, rows));
        Map<String, Object> maps = new HashMap<>();
        int records = empDao.selectCount(new Emp());
        int total = records % rows == 0 ? records / rows : records / rows + 1;
        maps.put("rows", emps);
        maps.put("page", page);
        maps.put("records", records);
        maps.put("total", total);
        return maps;
    }
}
