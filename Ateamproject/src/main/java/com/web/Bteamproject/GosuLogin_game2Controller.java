package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GosuLogin_game2Controller {

	@RequestMapping(value="/gosuLogin_game2", method=RequestMethod.GET)
	public String gosuLogin_game2() {
		return "gosuLogin_game2";
	}
}
