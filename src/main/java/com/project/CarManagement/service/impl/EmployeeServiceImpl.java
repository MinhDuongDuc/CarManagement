package com.project.CarManagement.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.project.CarManagement.entity.Employee;
import com.project.CarManagement.repo.EmployeeRepo;
import com.project.CarManagement.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeRepo employeeRepo;
    @Autowired
    PasswordEncoder passwordEncoder;

    @Override
    public List<Employee> getAllEmployee() {
        return employeeRepo.findAll();
    }

    @Override
    public void addEmployee(Employee employee) {
        
        if(employee.getEmployeeId()==0){
            employee.setPassword(passwordEncoder.encode("1"));
        }else if(employee.getEmployeeId()!=0 && employee.getPassword().equals("")){
            Employee e = getEmpById(employee.getEmployeeId());
            employee.setPassword(e.getPassword());
        }else{
            employee.setPassword(passwordEncoder.encode(employee.getPassword()));
        }
        employeeRepo.save(employee);
    }


    @Override
    public void deleteEmp(Long empId) {
        employeeRepo.deleteById(empId);
    }

    @Override
    public Employee getEmpById(Long empId) {
        Employee employee = null;
        Optional<Employee> e = employeeRepo.findById(empId);
        try {
            employee = e.get();
        } catch (Exception e1) {
            
            e1.printStackTrace();
        }
        return employee;
    }

    @Override
    public List<Employee> findEmployee(String employeeName) {
        return employeeRepo.findByEmployeeNameContaining(employeeName);
    }

    @Override
    public List<Employee> findEmployeeByDepartment(String departmentName) {
        return employeeRepo.findByDepartmentContaining(departmentName);
    }

    @Override
    public Employee getEmpByAccount(String account) {
        Employee e = employeeRepo.findByAccount(account);
        return e;
    }


    
}
