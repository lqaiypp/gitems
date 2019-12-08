package com.peng.controller;

import com.peng.entity.Emp;
import com.peng.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.Map;

/**
 * Created by liuqian on 2019/12/8.
 */
@RestController
@RequestMapping("emp")
public class Empcontroller {
    @Autowired
    private EmpService empService;

    @RequestMapping("findAll")
    public Map findAll(Integer page, Integer rows) {
        Map<String, Object> map = empService.findByPage(page, rows);
        return map;
    }

    @RequestMapping("crud")
    public void crud(Emp emp, String[] ids, String oper) {
        if (oper.equals("add")) {
            empService.save(emp);
        }
        if (oper.equals("edit")) {
            empService.update(emp);
        }
        if (oper.equals("del")) {
            empService.delete(Arrays.asList(ids));
        }

    }
}
