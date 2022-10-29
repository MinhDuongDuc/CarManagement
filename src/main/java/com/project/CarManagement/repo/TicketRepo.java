package com.project.CarManagement.repo;

// import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.CarManagement.entity.Ticket;

public interface TicketRepo extends JpaRepository<Ticket,Long>{
    // List<Ticket> findByLicensePlateContaining(String search);
    // List<Ticket> findByCustomerNameContaining(String search);
}
