package com.project.CarManagement.service;

import java.util.List;

import com.project.CarManagement.entity.BookingOffice;

public interface BookingOfficeService {
    List<BookingOffice> getBookingOffice();
    void saveBookingOffice(BookingOffice bo);
    void deleteBookingOffice(Long id);
    BookingOffice getById(Long id);
    List<BookingOffice> findBookingOffice(String search,String filter);
}
