package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GosuLogin_designController {

	@RequestMapping(value="/gosuLogin_design", method=RequestMethod.GET)
	public String gosuLogin_design() {
		return "gosuLogin_design";
	}
}
