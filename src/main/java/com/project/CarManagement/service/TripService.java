package com.project.CarManagement.service;

import java.util.List;

import com.project.CarManagement.entity.Trip;

public interface TripService {
    List<Trip> getTrip();
    void addTrip(Trip trip);
    void deleteTrip(Long id);
    Trip getById(Long id);
    List<Trip> searchTrip(String search);
}
