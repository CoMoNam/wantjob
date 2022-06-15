package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GosuLoginController3 {

	@RequestMapping(value="/gosuLogin3", method=RequestMethod.GET)
	public String gosuLogin3() {
		return "gosuLogin3";
	}
}
