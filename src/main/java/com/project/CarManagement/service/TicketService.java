package com.project.CarManagement.service;

import java.util.List;

import com.project.CarManagement.entity.Ticket;

public interface TicketService {
    List<Ticket> getTickets();
    void addTicket(Ticket ticket);
    void deleteTicket(Long id);
    Ticket getTicketById(Long id);
    List<Ticket> searchTicket(String search, String filter);
}
