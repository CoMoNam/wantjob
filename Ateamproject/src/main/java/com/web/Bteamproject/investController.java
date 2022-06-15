package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class investController {

	@RequestMapping(value="/invest", method=RequestMethod.GET)
	public String invest() {
		return "invest";
	}
}
