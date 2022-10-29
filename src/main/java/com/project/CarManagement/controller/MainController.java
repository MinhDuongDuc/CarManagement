package com.project.CarManagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.CarManagement.entity.Employee;
import com.project.CarManagement.service.impl.EmployeeServiceImpl;

@Controller
public class MainController {
    @Autowired
    private EmployeeServiceImpl employeeServiceImpl;

    @GetMapping(value = "/account/{account}")
    public String editProfile(Model model,@PathVariable("account") String account){
        model.addAttribute("employee", employeeServiceImpl.getEmpByAccount(account));
        return "edit-profile";
    }

    @PostMapping(value = "/")
    public String empAdd(@ModelAttribute("employee") Employee employee,Model model){
        employeeServiceImpl.addEmployee(employee);
        return "index";
    }
}
