package com.dwl.crud.controller;

import com.dwl.crud.entity.Department;
import com.dwl.crud.entity.Msg;
import com.dwl.crud.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class DepartmentController {

    @Autowired
    private DepartmentService departmentService;

    @ResponseBody
    @RequestMapping("/depts")
    public Msg getDepts(){
        List<Department> departments = departmentService.getDepts();
        return Msg.success().add("depts",departments);
    }
}
