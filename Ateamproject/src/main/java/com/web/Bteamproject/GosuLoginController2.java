package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GosuLoginController2 {

	@RequestMapping(value="/gosuLogin2", method=RequestMethod.GET)
	public String gosuLogin2() {
		return "gosuLogin2";
	}
}
