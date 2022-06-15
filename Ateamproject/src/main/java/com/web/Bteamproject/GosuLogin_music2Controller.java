package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GosuLogin_music2Controller {

	@RequestMapping(value="/gosuLogin_music2", method=RequestMethod.GET)
	public String gosuLogin_music2() {
		return "gosuLogin_music2";
	}
}
