package com.web.Bteamproject;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.service.MemberService;
import com.web.vo.MemberVO;

@Controller
public class HeaderController {

	@Resource(name = "memberService") 
	  private MemberService memberService;
	
	@RequestMapping(value="/header", method=RequestMethod.GET)
	public String header() {
		return "header";
	}
	@RequestMapping(value="/header2", method=RequestMethod.GET)
	public String header2() {
		return "header2";
	}
}
