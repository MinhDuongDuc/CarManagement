package com.project.CarManagement.service;

import java.util.List;

import com.project.CarManagement.entity.ParkingLot;

public interface ParkingLotService {
    List<ParkingLot> getParkingLot();
    void addParkingLot(ParkingLot pl);
    void deleteParkingLot(Long id);
    ParkingLot findById(Long id);
    List<ParkingLot> findParkingLot(String search,String filter);
}
