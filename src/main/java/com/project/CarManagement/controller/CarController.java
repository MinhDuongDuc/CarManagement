package com.project.CarManagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.CarManagement.entity.Car;
import com.project.CarManagement.service.impl.CarServiceImpl;
import com.project.CarManagement.service.impl.ParkingLotServiceImpl;

@Controller
@RequestMapping(value = "/car")
public class CarController {
    @Autowired
    private CarServiceImpl carImpl;

    @Autowired
    private ParkingLotServiceImpl plImpl;

    @RequestMapping(value = "/list",method = RequestMethod.GET )
    public String listCar(Model model){  
        model.addAttribute("carList", carImpl.getCar());
        return "car-list";
    }

    @RequestMapping(value = "/insert",method = RequestMethod.GET )
    public String addCarForm(Model model){      
        model.addAttribute("car", new Car());
        model.addAttribute("plList", plImpl.getParkingLot());
        return "car-add";
    }

    @RequestMapping(value = "/edit/{carId}",method = RequestMethod.GET )
    public String editCar(Model model,@PathVariable("carId") String carId){
        model.addAttribute("car", carImpl.getCarById(carId));
        model.addAttribute("plList", plImpl.getParkingLot());
        return "car-add";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST )
    public String addCar(Model model,@ModelAttribute("car") Car car){  
        carImpl.addCar(car);
        return "redirect:/car/list";
    }

    @RequestMapping(value = "/delete/{carId}",method = RequestMethod.GET )
    public String deleteCar(Model model,@PathVariable("carId") String carId){  
        carImpl.deleteCar(carId);
        return "redirect:/car/list";
    }
    @RequestMapping(value = "/search",method = RequestMethod.GET )
    public String searchCar(Model model,@RequestParam("search") String search,@RequestParam("filter") String filter){  
        model.addAttribute("carList", carImpl.findCar(search, filter));
        return "car-list";
    }

}
