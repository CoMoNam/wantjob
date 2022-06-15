package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class useranw_testController {

	@RequestMapping(value="/useranw_test", method=RequestMethod.GET)
	public String useranw_test() {
		return "useranw_test";
	}
}
