package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GosuLogin_indexController {

	@RequestMapping(value="gosusLogin_index", method=RequestMethod.GET)
	public String gosusLogin_index() {
		return "gosusLogin_index";
	}
}
