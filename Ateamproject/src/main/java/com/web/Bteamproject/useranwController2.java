package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class useranwController2 {

	@RequestMapping(value="/useranw2", method=RequestMethod.GET)
	public String useranw2() {
		return "useranw2";
	}
}
