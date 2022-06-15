package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GosuLogin_design2Controller {

	@RequestMapping(value="/gosuLogin_design2", method=RequestMethod.GET)
	public String gosuLogin_design2() {
		return "gosuLogin_design2";
	}
}
