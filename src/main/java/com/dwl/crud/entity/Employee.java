package com.dwl.crud.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.validation.constraints.Email;
import javax.validation.constraints.Pattern;

@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
public class Employee {
    private Integer empId;

    @Pattern(regexp = "(^[a-zA-Z0-9_-]{6,16}$)|(^[\\\\u2E80-\\\\u9FFF]{2,5})",
                           message = "用户名必须是6-11位数字或字母组合或者2-5位中文")
    private String empName;

    private String gender;

    @Email
    private String email;

    private Integer dId;
//希望查询员工的时候，部门信息也查询
    private Department department;
}