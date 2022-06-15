package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FooterController {

	@RequestMapping(value="/footer", method=RequestMethod.GET)
	public String footer() {
		return "footer";
	}
}
