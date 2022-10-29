package com.project.CarManagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.CarManagement.entity.BookingOffice;
import com.project.CarManagement.service.impl.BookingOfficeServiceImpl;
import com.project.CarManagement.service.impl.TripServiceImpl;


@Controller
@RequestMapping(value = "/bo")
public class BookingOfficeController {
    
    @Autowired
    private BookingOfficeServiceImpl boImpl;

    @Autowired
    private TripServiceImpl tripImpl;

    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public String listBookingOffice(Model model){
        model.addAttribute("boList",boImpl.getBookingOffice());
        return "booking-office-list";
    }
    @RequestMapping(value = "/insert",method = RequestMethod.GET)
    public String addBookingOfficeForm(Model model){
        model.addAttribute("bo", new BookingOffice());
        model.addAttribute("tripList", tripImpl.getTrip());
        return "booking-office-add";
    }
    @RequestMapping(value = "/edit/{boId}",method = RequestMethod.GET)
    public String editBookingOffice(Model model,@PathVariable("boId") Long id){
        model.addAttribute("bo", boImpl.getById(id));
        model.addAttribute("tripList", tripImpl.getTrip());
        return "booking-office-add";
    }
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String addBookingOffice(Model model,@ModelAttribute("bo") BookingOffice bo){
        boImpl.saveBookingOffice(bo);
        return "redirect:/bo/list";
    }
    @RequestMapping(value = "/delete/{boId}",method = RequestMethod.GET)
    public String listBookingOffice(Model model,@PathVariable("boId") Long id){
        boImpl.deleteBookingOffice(id);
        return "redirect:/bo/list";
    }
    @RequestMapping(value = "/search",method = RequestMethod.GET)
    public String searchBookingOffice(Model model,@RequestParam("search") String search,@RequestParam("filter") String filter){
        model.addAttribute("boList", boImpl.findBookingOffice(search,filter));
        return "booking-office-list";
    }
}
