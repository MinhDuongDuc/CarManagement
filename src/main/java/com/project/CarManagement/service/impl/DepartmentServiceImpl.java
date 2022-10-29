package com.project.CarManagement.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.CarManagement.entity.Department;
import com.project.CarManagement.repo.DepartmentRepo;
import com.project.CarManagement.service.DepartmentService;

@Service
public class DepartmentServiceImpl implements DepartmentService{

    @Autowired
    private DepartmentRepo dRepo;

    @Override
    public List<Department> getDepartment() {
        return dRepo.findAll();        
    }
    
}
