package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GosuLogin_studyController {

	@RequestMapping(value="/gosuLogin_study", method=RequestMethod.GET)
	public String gosuLogin_study() {
		return "gosuLogin_study";
	}
}
