package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NoticeController {

	@RequestMapping(value="/notice", method=RequestMethod.GET)
	public String notice() {
		return "/Notice/notice";
	}


	@RequestMapping(value="/notice1", method=RequestMethod.GET)
	public String notice1() {
		return "/Notice/notice1";
	}


	@RequestMapping(value="/notice2", method=RequestMethod.GET)
	public String notice2() {
		return "/Notice/notice2";
	}


	@RequestMapping(value="/notice3", method=RequestMethod.GET)
	public String notice3() {
		return "/Notice/notice3";
	}


	@RequestMapping(value="/notice4", method=RequestMethod.GET)
	public String notice4() {
		return "/Notice/notice4";
	}


	@RequestMapping(value="/notice5", method=RequestMethod.GET)
	public String notice5() {
		return "/Notice/notice5";
	}

	@RequestMapping(value="/notice6", method=RequestMethod.GET)
	public String notice6() {
		return "/Notice/notice6";
	}


}