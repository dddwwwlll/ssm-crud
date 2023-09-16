package com.dwl.crud.service;

import com.dwl.crud.entity.Employee;

import java.util.List;

public interface EmployeeService {
    List<Employee> getAll();

    void saveEmp(Employee employee);

    boolean checkUser(String empName);

    Employee getEmp(Integer id);

    void updateEmp(Employee employee);

    void deleteBatch(List<Integer> del_ids);

    void deleteEmp(Integer id);
}
