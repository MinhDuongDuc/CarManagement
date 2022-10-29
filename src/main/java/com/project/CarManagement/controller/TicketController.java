package com.project.CarManagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.CarManagement.entity.Ticket;
import com.project.CarManagement.service.impl.CarServiceImpl;
import com.project.CarManagement.service.impl.TicketServiceImpl;
import com.project.CarManagement.service.impl.TripServiceImpl;

@Controller
@RequestMapping(value = "/ticket")
public class TicketController {
    @Autowired
    private TicketServiceImpl ticketImpl;

    @Autowired
    private CarServiceImpl carImpl;

    @Autowired
    private TripServiceImpl tripImpl;

    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public String listticket(Model model){
        model.addAttribute("ticketList", ticketImpl.getTickets());
        return "ticket-list";
    }
    @RequestMapping(value = "/insert",method = RequestMethod.GET)
    public String addticketForm(Model model){
        model.addAttribute("ticket", new Ticket());
        model.addAttribute("tripList", tripImpl.getTrip());
        model.addAttribute("carList", carImpl.getCar());
        return "ticket-add";
    }
    @RequestMapping(value = "/edit/{ticketId}",method = RequestMethod.GET)
    public String editticket(Model model,@PathVariable("ticketId") Long id){
        model.addAttribute("ticket", ticketImpl.getTicketById(id));
        model.addAttribute("tripList", tripImpl.getTrip());
        model.addAttribute("carList", carImpl.getCar());
        return "ticket-add";
    }
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String addticket(Model model,@ModelAttribute("ticket") Ticket ticket){
        ticketImpl.addTicket(ticket);
        return "redirect:/ticket/list";
    }
    @RequestMapping(value = "/delete/{ticketId}",method = RequestMethod.GET)
    public String listticket(Model model,@PathVariable("ticketId") Long id){
        ticketImpl.deleteTicket(id);
        return "redirect:/ticket/list";
    }
    @RequestMapping(value = "/search",method = RequestMethod.GET)
    public String searchticket(Model model,@RequestParam("search") String search,@RequestParam("filter") String filter){
        model.addAttribute("ticketList", ticketImpl.searchTicket(search,filter));
        return "ticket-list";
    }

}
