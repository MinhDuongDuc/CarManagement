package com.project.CarManagement.entity;

import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Ticket {
    @Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "Ticket_id")
	private long ticketId;
	
	@Column(name = "Time")
	@DateTimeFormat(iso = DateTimeFormat.ISO.TIME)
	private LocalTime time;
	
	@Column(name = "Customer_name")
	private String customerName;
	
	@ManyToOne
	@JoinColumn(name = "Liscense_plate")
	private Car car;
	
	@ManyToOne
	@JoinColumn(name = "Trip_id")
	private Trip trip;
}
