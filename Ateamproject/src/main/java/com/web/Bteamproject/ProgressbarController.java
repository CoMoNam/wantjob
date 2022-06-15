package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProgressbarController {

	@RequestMapping(value="/progressbar", method=RequestMethod.GET)
	public String progressbar() {
		return "progressbar";
	}
}
