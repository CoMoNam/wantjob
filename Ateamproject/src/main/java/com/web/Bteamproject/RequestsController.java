package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.vo.EstimateVO;

@Controller
public class RequestsController {

	@RequestMapping(value="/requests", method=RequestMethod.GET)
	public String requests()  {
		return "/Requests/requests";
	}
	
	@RequestMapping(value="/requests_received")
	public String requests_received(@ModelAttribute("estimateVO") EstimateVO estimateVO, Model model)
	  throws Exception {
		return "/Requests/received";
	}
}
