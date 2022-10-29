package com.project.CarManagement.service;

import java.util.List;

import com.project.CarManagement.entity.Car;

public interface CarService {
    List<Car> getCar();
    void addCar(Car car);
    void deleteCar(String id);
    Car getCarById(String id);
    List<Car> findCar(String name,String filter);
}
