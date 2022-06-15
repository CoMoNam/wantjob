package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GosuProfileController {

	@RequestMapping(value="/gosuprofile", method=RequestMethod.GET)
	public String gosuprofile() {
		return "gosuprofile";
	}
}
