package com.project.CarManagement.service;

import java.util.List;

import com.project.CarManagement.entity.Employee;

public interface EmployeeService {
    List<Employee> getAllEmployee();
    void addEmployee(Employee employee);
    Employee getEmpById(Long empId);
    void deleteEmp(Long empId);
    List<Employee> findEmployee(String employeeName);
    List<Employee> findEmployeeByDepartment(String departmentName);
    Employee getEmpByAccount(String account);
}
