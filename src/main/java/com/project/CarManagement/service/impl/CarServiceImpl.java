package com.project.CarManagement.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.CarManagement.entity.Car;
import com.project.CarManagement.repo.CarRepo;
import com.project.CarManagement.service.CarService;

@Service
public class CarServiceImpl implements CarService{

    @Autowired
    private CarRepo carRepo;

    @Override
    public List<Car> getCar() {
        return carRepo.findAll();
    }

    @Override
    public void addCar(Car car) {
        carRepo.save(car);
    }

    @Override
    public void deleteCar(String id) {
        carRepo.deleteById(id);
        
    }

    @Override
    public List<Car> findCar(String name, String filter) {
        List<Car> searchResult = new ArrayList<>();
        if (filter.equals("license_plate")) {
            searchResult = carRepo.findByLicensePlateContaining(name);
        } else {
            searchResult = carRepo.findByCarTypeContaining(name);
        }
        return searchResult;
    }

    @Override
    public Car getCarById(String id) {
        return carRepo.findById(id).get();
    }
    
}
