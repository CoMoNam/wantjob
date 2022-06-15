package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GosuLoginController4 {

	@RequestMapping(value="/gosuLogin4", method=RequestMethod.GET)
	public String gosuLogin4() {
		return "gosuLogin4";
	}
}
