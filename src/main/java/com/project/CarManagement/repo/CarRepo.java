package com.project.CarManagement.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.CarManagement.entity.Car;

public interface CarRepo extends JpaRepository<Car,String>{
    List<Car> findByLicensePlateContaining(String search);
    List<Car> findByCarTypeContaining(String search);
}
