package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class QuesController {

	@RequestMapping(value="/ques", method=RequestMethod.GET)
	public String ques() {
		return "/Ques/ques";
	}



	@RequestMapping(value="/ques1", method=RequestMethod.GET)
	public String ques1() {
		return "/Ques/ques1";
	}



	@RequestMapping(value="/ques2", method=RequestMethod.GET)
	public String ques2() {
		return "/Ques/ques2";
	}



	@RequestMapping(value="/ques3", method=RequestMethod.GET)
	public String ques3() {
		return "/Ques/ques3";
	}



	@RequestMapping(value="/ques4", method=RequestMethod.GET)
	public String ques4() {
		return "/Ques/ques4";
   }


	@RequestMapping(value="/ques5", method=RequestMethod.GET)
	public String ques5() {
		return "/Ques/ques5";
	}



	@RequestMapping(value="/ques6", method=RequestMethod.GET)
	public String ques6() {
		return "/Ques/ques6";
	}



	@RequestMapping(value="/ques7", method=RequestMethod.GET)
	public String ques7() {
		return "/Ques/ques7";
	}



	@RequestMapping(value="/ques8", method=RequestMethod.GET)
	public String ques8() {
		return "/Ques/ques8";
	}



	@RequestMapping(value="/ques9", method=RequestMethod.GET)
	public String ques9() {
		return "/Ques/ques9";
	}
}
