package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GosuInfoController {

	@RequestMapping(value="/gosuinfo", method=RequestMethod.GET)
	public String gosuinfo() {
		return "gosuinfo";
	}
}
