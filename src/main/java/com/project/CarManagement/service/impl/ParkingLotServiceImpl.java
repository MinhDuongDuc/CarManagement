package com.project.CarManagement.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.CarManagement.entity.ParkingLot;
import com.project.CarManagement.repo.ParkingLotRepo;
import com.project.CarManagement.service.ParkingLotService;

@Service
public class ParkingLotServiceImpl implements ParkingLotService{

    @Autowired
    private ParkingLotRepo plRepo;

    @Override
    public List<ParkingLot> getParkingLot() {
        return plRepo.findAll();
    }

    @Override
    public void addParkingLot(ParkingLot pl) {
        plRepo.save(pl);
    }

    @Override
    public void deleteParkingLot(Long id) {
        plRepo.deleteById(id);
        
    }

    @Override
    public ParkingLot findById(Long id) {
        return plRepo.findById(id).get();
    }

    @Override
    public List<ParkingLot> findParkingLot(String search, String filter) {
        List<ParkingLot> searchResult = new ArrayList<>();
        if (filter.equals("place")) {
            searchResult = plRepo.findByParkPlaceContaining(search);
        } else {
            searchResult = plRepo.findByParkStatusContaining(search);
        }
        return searchResult;
    }
    
}
