package com.project.CarManagement.entity;

import java.time.LocalDate;

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
public class BookingOffice {
    
    @Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "Office_id")
	private long officeId;

	@Column(name = "Start_contracted_Deadline")
	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private LocalDate startContractedDeadline;
	
	@Column(name = "End_contracted_Deadline")
	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private LocalDate endContractDeadline;
	
	@Column(name = "Office_name")
	private String officeName;

	@Column(name = "Office_phone")
	private String officePhone;
	
	@Column(name = "Office_place")
	private String officePlace;
	
	@Column(name = "Price")
	private long officePrice;
	
	@ManyToOne
	@JoinColumn(name = "Trip_id")
	private Trip trip;
}
