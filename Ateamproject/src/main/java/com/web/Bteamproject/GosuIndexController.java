package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GosuIndexController {

	@RequestMapping(value="/gosuindex", method=RequestMethod.GET)
	public String gosuindex() {
		return "gosuindex";
	}
}
