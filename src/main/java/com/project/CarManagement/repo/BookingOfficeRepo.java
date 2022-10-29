package com.project.CarManagement.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.CarManagement.entity.BookingOffice;

public interface BookingOfficeRepo extends JpaRepository<BookingOffice,Long>{
    List<BookingOffice> findByTripContaining(String search);
    List<BookingOffice> findByOfficeNameContaining(String search);
}
