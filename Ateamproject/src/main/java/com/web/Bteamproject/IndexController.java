package com.web.Bteamproject;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.service.MemberService;
import com.web.vo.MemberVO;

@Controller
public class IndexController {
	
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	  @Resource(name = "memberService") 
	  private MemberService memberService;

	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String index(String ID, MemberVO memberVO, Model model) {
		model.addAttribute("kk", memberService.mypageUinfo(ID));
		logger.info("vo="+memberVO.getID());
		return "index";
	}
}
