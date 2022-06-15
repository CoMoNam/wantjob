package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class localanwController {

	@RequestMapping(value="/localanw", method=RequestMethod.GET)
	public String localanw() {
		return "localanw";
	}
}
