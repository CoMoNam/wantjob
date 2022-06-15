package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class InvestserviceController {

	@RequestMapping(value="/investservice", method=RequestMethod.GET)
	public String investservice() {
		return "/investservice/investservice";
	}
	
	@RequestMapping(value="actual1", method=RequestMethod.GET)
	public String actual1() {
		return "/investservice/actual1";
	}
	
	@RequestMapping(value="/actual2", method=RequestMethod.GET)
	public String actual2() {
		return "/investservice/actual2";
	}
	
	@RequestMapping(value="/gold", method=RequestMethod.GET)
	public String gold() {
		return "/investservice/gold";
	}
	
	@RequestMapping(value="/seoul", method=RequestMethod.GET)
	public String seoul() {
		return "/investservice/seoul";
	}
	
}
