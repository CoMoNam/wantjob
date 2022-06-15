package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GosuLogin_musicController {

	@RequestMapping(value="/gosuLogin_music", method=RequestMethod.GET)
	public String gosuLogin_music() {
		return "gosuLogin_music";
	}
}
