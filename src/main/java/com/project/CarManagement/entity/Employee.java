package com.project.CarManagement.entity;

import java.time.LocalDate;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Transient;

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
public class Employee {
    @Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "Employee_id")
	private long employeeId;
	
	@Column(name = "Account",nullable = false, unique = true)
	private String account;
	
	// @Column(name = "Department")
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "deptId")
	private Department department;
	
	@Column(name = "Address")
	private String employeeAddress;
	
	@Column(name = "Birthdate")
	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private LocalDate employeeBirthdate;
	
	@Column(name = "Email")
	private String employeeEmail;
	
	@Column(name = "Employee_Name")
	private String employeeName;
	
	@Column(name = "Employee_Phone")
	private String employeePhone;
	
	@Column(name = "Password")
	private String password;

	@Transient
	private String confirmPassword;
	
	@Column(name = "Sex")
	private String sex;
}
