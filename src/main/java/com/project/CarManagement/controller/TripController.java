package com.project.CarManagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.CarManagement.entity.Trip;
import com.project.CarManagement.service.impl.TripServiceImpl;

@Controller
@RequestMapping(value = "/trip")
public class TripController {
    @Autowired
    private TripServiceImpl tripImpl;

    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public String listTrip(Model model){
        model.addAttribute("tripList", tripImpl.getTrip());
        return "trip-list";
    }
    @RequestMapping(value = "/insert",method = RequestMethod.GET)
    public String addTripForm(Model model){
        model.addAttribute("trip", new Trip());
        return "trip-add";
    }
    @RequestMapping(value = "/edit/{tripId}",method = RequestMethod.GET)
    public String editTrip(Model model,@PathVariable("tripId") Long id){
        model.addAttribute("trip", tripImpl.getById(id));
        return "trip-add";
    }
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String addTrip(Model model,@ModelAttribute("trip") Trip trip){
        tripImpl.addTrip(trip);
        return "redirect:/trip/list";
    }
    @RequestMapping(value = "/delete/{tripId}",method = RequestMethod.GET)
    public String listTrip(Model model,@PathVariable("tripId") Long id){
        tripImpl.deleteTrip(id);
        return "redirect:/trip/list";
    }
    @RequestMapping(value = "/search",method = RequestMethod.GET)
    public String searchTrip(Model model,@RequestParam("search") String search){
        model.addAttribute("tripList", tripImpl.searchTrip(search));
        return "trip-list";
    }
    
    
}
