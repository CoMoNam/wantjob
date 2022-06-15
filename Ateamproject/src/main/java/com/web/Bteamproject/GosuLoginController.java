package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GosuLoginController {

	@RequestMapping(value="/gosuLogin", method=RequestMethod.GET)
	public String gosuLogin() {
		return "gosuLogin";
	}
}
