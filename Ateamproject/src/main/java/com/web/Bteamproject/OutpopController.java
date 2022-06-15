package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OutpopController {

	@RequestMapping(value="/outpop", method=RequestMethod.GET)
	public String outpop() {
		return "outpop";
	}
}
