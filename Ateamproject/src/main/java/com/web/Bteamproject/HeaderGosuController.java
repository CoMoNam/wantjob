package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HeaderGosuController {

	@RequestMapping(value="/headergosu", method=RequestMethod.GET)
	public String headergosu() {
		return "headergosu";
	}
}
