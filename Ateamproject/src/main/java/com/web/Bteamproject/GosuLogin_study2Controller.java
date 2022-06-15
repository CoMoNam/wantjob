package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GosuLogin_study2Controller {

	@RequestMapping(value="/gosuLogin_study2", method=RequestMethod.GET)
	public String gosuLogin_study2() {
		return "gosuLogin_study2";
	}
}
