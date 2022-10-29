package com.project.CarManagement.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
public class ParkingLot {
    @Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "Park_id")
	private long parkId;
	
	@Column(name = "Park_area")
	private long parkArea;
	
	@Column(name = "Park_name")
	private String parkName;
	
	@Column(name = "Park_place")
	private String parkPlace;
	
	@Column(name = "Park_price")
	private long parkPrice;
	
	@Column(name = "Park_status")
	private String parkStatus;

	@OneToMany(mappedBy = "parkingLot",cascade = CascadeType.ALL)
	private List<Car> car;
}
