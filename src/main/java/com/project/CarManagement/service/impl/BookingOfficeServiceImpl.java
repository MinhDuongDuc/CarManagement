package com.project.CarManagement.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.CarManagement.entity.BookingOffice;
import com.project.CarManagement.repo.BookingOfficeRepo;
import com.project.CarManagement.service.BookingOfficeService;

@Service
public class BookingOfficeServiceImpl implements BookingOfficeService{

    @Autowired
    private BookingOfficeRepo boRepo;
    @Override
    public List<BookingOffice> getBookingOffice() {
        return boRepo.findAll();
    }

    @Override
    public void saveBookingOffice(BookingOffice bo) {
        boRepo.save(bo);
    }

    @Override
    public void deleteBookingOffice(Long id) {
        boRepo.deleteById(id);
    }

    @Override
    public BookingOffice getById(Long id) {
        return boRepo.findById(id).get();
    }

    @Override
    public List<BookingOffice> findBookingOffice(String search, String filter) {
        List<BookingOffice> bList = new ArrayList<>();
        if (filter.equals("name")) {
            bList = boRepo.findByOfficeNameContaining(search);
        } else {
            bList = boRepo.findByTripContaining(search);
        }
        return bList;
    }

    
}
