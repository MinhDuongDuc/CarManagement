package com.project.CarManagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.CarManagement.entity.ParkingLot;
import com.project.CarManagement.service.impl.ParkingLotServiceImpl;

@Controller
@RequestMapping(value = "/pl")
public class ParkingLotController {
    @Autowired
    private ParkingLotServiceImpl plImpl;

    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public String listParkingLot(Model model){
        List<ParkingLot> plList = plImpl.getParkingLot();
        model.addAttribute("plList", plList);
        return "parking-lot-list";
    }

    @RequestMapping(value = "/insert",method = RequestMethod.GET)
    public String addform(Model model){
        model.addAttribute("parkingLot", new ParkingLot());
        return "parking-lot-add";
    }

    @RequestMapping(value = "/edit/{plId}",method = RequestMethod.GET)
    public String editform(Model model,@PathVariable("plId") Long id){
        ParkingLot parkingLot = plImpl.findById(id);
        model.addAttribute("parkingLot", parkingLot);
        return "parking-lot-add";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String addParkingLot(Model model,@ModelAttribute("parkingLot") ParkingLot pl){
        plImpl.addParkingLot(pl);
        return "redirect:/pl/list";
    }

    @RequestMapping(value = "/delete/{plId}",method = RequestMethod.GET)
    public String deleteParkingLot(Model model,@PathVariable("plId") Long id){
        plImpl.deleteParkingLot(id);
        return "redirect:/pl/list";
    }

    @RequestMapping(value = "/search",method = RequestMethod.GET)
    public String searchParkingLot(Model model,@RequestParam("search") String search,@RequestParam("filter") String filter){
        List<ParkingLot> plList = plImpl.findParkingLot(search, filter);
        model.addAttribute("plList", plList);
        return "parking-lot-list";
    }
}
