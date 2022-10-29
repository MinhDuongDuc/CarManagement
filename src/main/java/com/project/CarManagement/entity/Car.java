package com.project.CarManagement.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Car {
    @Id
	@Column(name = "License_plate")
	private String licensePlate;
	
	@Column(name = "Car_color")
	private String carColor;
	
	@Column(name = "Car_type")
	private String carType;
	
	@Column(name = "Company")
	private String company;
	
	@ManyToOne
	@JoinColumn(name = "Park_id")
	private ParkingLot parkingLot;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "car")
	private List<Ticket> tickets;
}
