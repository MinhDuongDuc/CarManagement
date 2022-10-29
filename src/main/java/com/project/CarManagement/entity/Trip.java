package com.project.CarManagement.entity;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Trip {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "Trip_id")
    private Long tripId;
    private String carType;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private LocalDate depatureDate;

    @DateTimeFormat(iso = DateTimeFormat.ISO.TIME)
    private LocalTime depaturTime;
    private String destination;
    private String driver;
    private int maxTicket;

    @OneToMany(mappedBy = "trip",cascade = CascadeType.ALL)
    private List<BookingOffice> bookingOffice;

    @OneToMany(mappedBy = "trip",cascade = CascadeType.ALL)
    private List<Ticket> tickets;
}
