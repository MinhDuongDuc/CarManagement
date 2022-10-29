package com.project.CarManagement.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.CarManagement.entity.Ticket;
import com.project.CarManagement.repo.TicketRepo;
import com.project.CarManagement.service.TicketService;

@Service
public class TicketServiceImpl implements TicketService{
    @Autowired
    private TicketRepo ticketRepo;
    @Override
    public List<Ticket> getTickets() {
        return ticketRepo.findAll();
    }

    @Override
    public void addTicket(Ticket ticket) {
        ticketRepo.save(ticket);
    }

    @Override
    public void deleteTicket(Long id) {
        ticketRepo.deleteById(id);
    }

    @Override
    public Ticket getTicketById(Long id) {
        return ticketRepo.findById(id).get();
    }

    @Override
    public List<Ticket> searchTicket(String search, String filter) {
        List<Ticket> tList = new ArrayList<>();
        if (filter.equals("license_plate")) {
            // tList = ticketRepo.findByLicensePlateContaining(search);
        } else {
            // tList = ticketRepo.findByCustomerNameContaining(search);
        }
        return tList;
    }
    
}
