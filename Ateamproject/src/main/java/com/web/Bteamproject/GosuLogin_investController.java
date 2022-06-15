package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GosuLogin_investController {

	@RequestMapping(value="/gosuLogin_invest", method=RequestMethod.GET)
	public String gosuLogin_invest() {
		return "gosuLogin_invest";
	}
}
