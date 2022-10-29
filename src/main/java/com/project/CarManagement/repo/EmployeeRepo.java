package com.project.CarManagement.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.CarManagement.entity.Employee;

import java.util.List;

public interface EmployeeRepo extends JpaRepository<Employee,Long>{
    List<Employee> findByEmployeeNameContaining(String employeeName);
    List<Employee> findByDepartmentContaining(String department);
    Employee findByAccount(String account);
}
