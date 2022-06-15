package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserIndexController {

	@RequestMapping(value="/userindex", method=RequestMethod.GET)
	public String userindex() {
		return "userindex";
	}
}
