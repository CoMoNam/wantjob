package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MusicserviceController {

	@RequestMapping(value="/musicservice", method=RequestMethod.GET)
	public String musicservice() {
		return "/musicservice/musicservice";
	}
	
	@RequestMapping(value="/acousticguitar", method=RequestMethod.GET)
	public String acousticguitar() {
		return "/musicservice/acousticguitar";
	}
	
	@RequestMapping(value="/ballad", method=RequestMethod.GET)
	public String ballad() {
		return "/musicservice/ballad";
	}
	
	@RequestMapping(value="/composing", method=RequestMethod.GET)
	public String composing() {
		return "/musicservice/composing";
	}
	
	@RequestMapping(value="/piano", method=RequestMethod.GET)
	public String piano() {
		return "/musicservice/piano";
	}
	
	
	
	
	
	
}
