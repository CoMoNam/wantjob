package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class invest2Controller {

	@RequestMapping(value="/invest2", method=RequestMethod.GET)
	public String invest2() {
		return "invest2";
	}
}
