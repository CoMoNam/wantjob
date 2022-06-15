package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StudyserviceController {

	@RequestMapping(value="/studyservice", method=RequestMethod.GET)
	public String studyservice() {
		return "/studyservice/studyservice";
	}
	
	@RequestMapping(value="/accounting", method=RequestMethod.GET)
	public String accounting() {
		return "/studyservice/accounting";
	}
	
	@RequestMapping(value="/grammar", method=RequestMethod.GET)
	public String grammar() {
		return "/studyservice/grammar";
	}
	
	@RequestMapping(value="/javaa", method=RequestMethod.GET)
	public String javaa() {
		return "/studyservice/javaa";
	}
	
	@RequestMapping(value="/special", method=RequestMethod.GET)
	public String special() {
		return "/studyservice/special";
	}
	
	
	
	
	
	
	
}
