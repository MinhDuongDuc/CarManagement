package com.project.CarManagement.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.CarManagement.entity.Department;

public interface DepartmentRepo extends JpaRepository<Department,Long>{
    
}
