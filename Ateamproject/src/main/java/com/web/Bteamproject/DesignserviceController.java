package com.web.Bteamproject;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DesignserviceController {

	@RequestMapping(value="/designservice", method=RequestMethod.GET)
	public String designservice() {
		return "/designservice/designservice";
	}
	
	@RequestMapping(value="/faui", method=RequestMethod.GET)
	public String faui() {
		return "/designservice/faui";
	}
	
	@RequestMapping(value="/hwansil", method=RequestMethod.GET)
	public String hwansil() {
		return "/designservice/hwansil";
	}
	
	@RequestMapping(value="/siyoung", method=RequestMethod.GET)
	public String siyoung() {
		return "/designservice/siyoung";
	}
	
	@RequestMapping(value="/sankyung", method=RequestMethod.GET)
	public String sankyung() {
		return "/designservice/sankyung";
	}
	
}
