package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GosuLogin_investController2 {

	@RequestMapping(value="/gosuLogin_invest2", method=RequestMethod.GET)
	public String gosuLogin_invest2() {
		return "gosuLogin_invest2";
	}
}
