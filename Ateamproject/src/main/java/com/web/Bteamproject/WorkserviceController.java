package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WorkserviceController {

	@RequestMapping(value="/workservice", method=RequestMethod.GET)
	public String workservice() {
		return "/workservice/workservice";
	}
	
	@RequestMapping(value="/golf", method=RequestMethod.GET)
	public String golf() {
		return "/workservice/golf";
	}
	
	@RequestMapping(value="/health", method=RequestMethod.GET)
	public String health() {
		return "/workservice/health";
	}
	
	@RequestMapping(value="/tennis", method=RequestMethod.GET)
	public String tennis() {
		return "/workservice/tennis";
	}
	
	@RequestMapping(value="/yoga", method=RequestMethod.GET)
	public String yoga() {
		return "/workservice/yoga";
	}
	
	
	
	
	
	
	
	
}
