package com.dwl.crud.service.impl;

import com.dwl.crud.entity.Employee;
import com.dwl.crud.entity.EmployeeExample;
import com.dwl.crud.mapper.EmployeeMapper;
import com.dwl.crud.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImplement implements EmployeeService {

    @Autowired
    private EmployeeMapper employeeMapper;

//    查询所有员工，
    @Override
    public List<Employee> getAll() {
        return employeeMapper.selectByExampleWithDept(null );
    }

//    添加用户
    @Override
    public void saveEmp(Employee employee) {
        employeeMapper.insertSelective(employee);
    }

//    检验用户名是否可用
//    0可用
    @Override
    public boolean checkUser(String empName) {
        EmployeeExample example = new EmployeeExample();
        EmployeeExample.Criteria criteria = example.createCriteria();
        criteria.andEmpNameEqualTo(empName);
        long count = employeeMapper.countByExample(example);
        return count == 0;
    }

//    根据id查询
    @Override
    public Employee getEmp(Integer id) {
        return employeeMapper.selectByPrimaryKey(id);
    }

//    修改员工信息
    @Override
    public void updateEmp(Employee employee) {
        employeeMapper.updateByPrimaryKeySelective(employee);
    }

//    批量删除
    @Override
    public void deleteBatch(List<Integer> del_ids) {
        EmployeeExample example = new EmployeeExample();
        EmployeeExample.Criteria criteria = example.createCriteria();
        criteria.andEmpIdIn(del_ids);
        employeeMapper.deleteByExample(example);
    }

//    根据id删除
    @Override
    public void deleteEmp(Integer id) {
        employeeMapper.deleteByPrimaryKey(id);
    }
}
