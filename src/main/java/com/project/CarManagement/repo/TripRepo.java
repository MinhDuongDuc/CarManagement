package com.project.CarManagement.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.CarManagement.entity.Trip;

public interface TripRepo extends JpaRepository<Trip,Long>{
    List<Trip> findByDestinationContaining(String name);
}
