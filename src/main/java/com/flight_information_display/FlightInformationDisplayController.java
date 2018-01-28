package com.flight_information_display;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FlightInformationDisplayController {


	@RequestMapping("/")
	public String welcome(Model model) {
            return "welcome";
        }
        
        @RequestMapping("/arrivals")
	public String arrivals(Model model) {
            return "arrivals";
        }
        
        @RequestMapping("/departures")
	public String departures(Model model) {
            return "departures";
        }
        
        @RequestMapping("/alternating")
	public String alternating(Model model) {
            return "alternating";
        }

}