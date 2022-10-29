package com.project.CarManagement.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.CarManagement.entity.ParkingLot;

public interface ParkingLotRepo extends JpaRepository<ParkingLot,Long>{
    List<ParkingLot> findByParkPlaceContaining(String search);
    List<ParkingLot> findByParkStatusContaining(String search);
}
