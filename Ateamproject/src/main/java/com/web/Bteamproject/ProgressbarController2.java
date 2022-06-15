package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProgressbarController2 {

	@RequestMapping(value="/progressbar2", method=RequestMethod.GET)
	public String progressbar2() {
		return "progressbar2";
	}
}
