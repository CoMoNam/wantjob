package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GameserviceController {

	@RequestMapping(value="/gameservice", method=RequestMethod.GET)
	public String gameservice() {
		return "/gameservice/gameservice";
	}
	
	@RequestMapping(value="/badook", method=RequestMethod.GET)
	public String badook() {
		return "/gameservice/badook";
	}
	
	@RequestMapping(value="/fear", method=RequestMethod.GET)
	public String fear() {
		return "/gameservice/fear";
	}
	
	@RequestMapping(value="/squid", method=RequestMethod.GET)
	public String squid() {
		return "/gameservice/squid";
	}
	
	@RequestMapping(value="/lol", method=RequestMethod.GET)
	public String lol() {
		return "/gameservice/lol";
	}
	
	
}
