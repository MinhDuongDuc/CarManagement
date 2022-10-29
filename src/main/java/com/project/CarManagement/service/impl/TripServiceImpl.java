package com.project.CarManagement.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.CarManagement.entity.Trip;
import com.project.CarManagement.repo.TripRepo;
import com.project.CarManagement.service.TripService;

@Service
public class TripServiceImpl implements TripService{

    @Autowired
    private TripRepo tripRepo;
    @Override
    public List<Trip> getTrip() {
        return tripRepo.findAll();
    }

    @Override
    public void addTrip(Trip trip) {
        tripRepo.save(trip);
    }

    @Override
    public void deleteTrip(Long id) {
        // TODO Auto-generated method stub
        tripRepo.deleteById(id);
    }

    @Override
    public List<Trip> searchTrip(String search) {
        // TODO Auto-generated method stub
        return tripRepo.findByDestinationContaining(search);
    }

    @Override
    public Trip getById(Long id) {
        // TODO Auto-generated method stub
        return tripRepo.findById(id).get();
    }


    
}
