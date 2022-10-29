package com.project.CarManagement.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.CarManagement.entity.Employee;
import com.project.CarManagement.service.impl.DepartmentServiceImpl;
import com.project.CarManagement.service.impl.EmployeeServiceImpl;

@Controller
@RequestMapping(value = "/employee")
public class EmployeeController {
    @Autowired
    private EmployeeServiceImpl employeeServiceImpl;
    @Autowired
    private DepartmentServiceImpl dServiceImpl;

    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public String index(Model model){
        List<Employee> empList= employeeServiceImpl.getAllEmployee();
        model.addAttribute("empList", empList);
        return "employee-list";
    }

    @RequestMapping(value = "/insert",method = RequestMethod.GET)
    public String showForm(Model model){
        model.addAttribute("deptList", dServiceImpl.getDepartment());
        model.addAttribute("employee", new Employee());
        return "employee-add";
    }

    @RequestMapping(value = "/edit/{empId}",method = RequestMethod.GET)
    public String showEditForm(Model model,@PathVariable("empId") Long empId){
        model.addAttribute("deptList", dServiceImpl.getDepartment());
        model.addAttribute("employee", employeeServiceImpl.getEmpById(empId));
        return "employee-add";
    }


    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String empAdd(@ModelAttribute("employee") Employee employee,Model model){
        employeeServiceImpl.addEmployee(employee);
        return "redirect:/employee/list";
    }
    @RequestMapping(value = "/delete/{empId}",method = RequestMethod.GET)
    public String empDelString(@PathVariable("empId") Long empId){
        employeeServiceImpl.deleteEmp(empId);
        return "redirect:/employee/list";
    }

    @RequestMapping(value = "/search",method = RequestMethod.GET)
    public String findEmployee(Model model,@RequestParam("search") String searchName,@RequestParam("filter") String filter){
        List<Employee> empList= new ArrayList<>();
        if (filter.equals("name")) {
            empList= employeeServiceImpl.findEmployee(searchName);
        } else {
            empList= employeeServiceImpl.findEmployeeByDepartment(searchName);
        }
        model.addAttribute("empList", empList);
        return "employee-list";
    }

}
