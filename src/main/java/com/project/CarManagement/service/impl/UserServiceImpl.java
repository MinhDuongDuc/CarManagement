package com.project.CarManagement.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.project.CarManagement.entity.Employee;
import com.project.CarManagement.repo.EmployeeRepo;

@Service
public class UserServiceImpl implements UserDetailsService{

    @Autowired
    private EmployeeRepo employeeRepo;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Employee employee =  employeeRepo.findByAccount(username);
        if (employee == null){
            throw new UsernameNotFoundException("Employee not found");
        }
        return new UserDetailsImpl(employee);
    }
    
}
