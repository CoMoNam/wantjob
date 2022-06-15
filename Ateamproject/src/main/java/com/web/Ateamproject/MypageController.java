package com.web.Ateamproject;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.domain.LoginDTO;
import com.web.service.MemberService;
import com.web.vo.MemberVO;

@Controller
public class MypageController {

	
	  @Resource(name = "memberService") 
	  private MemberService memberService;
	 
	  
		/*
		 * @RequestMapping(value = "mypageUinfo") public String mypageUinfo(Model model,
		 * String ID) { return "Mypage/mypage"; }
		 */
	
	@RequestMapping(value="/mypage", method=RequestMethod.GET)
	public String mypage(Model model, String mnum,MemberVO memberVO) {
		model.addAttribute("reli",memberService.mypageUinfo(mnum));

		return "/Mypage/mypage";
	}
	
	//GET
	@RequestMapping(value="/mypage_settingemail", method=RequestMethod.GET)
	public String mypage_settingemail(String mnum, Model model,MemberVO memberVO) {
		model.addAttribute("li", memberService.mypageUinfo(mnum));
		return "/Mypage/settingemail";
	}
	@RequestMapping(value="/mypage_settingname", method=RequestMethod.GET)
	public String mypage_settingname(String mnum, Model model,MemberVO memberVO) {
		model.addAttribute("li", memberService.mypageUinfo(mnum));
		return "/Mypage/settingname";
	}
	@RequestMapping(value="/mypage_settingpassword", method=RequestMethod.GET)
	public String mypage_settingpassword() {
		return "/Mypage/settingpassword";
	}
	@RequestMapping(value="/mypage_settingtel", method=RequestMethod.GET)
	public String mypage_settingtel(String mnum, Model model,MemberVO memberVO) {
		model.addAttribute("li", memberService.mypageUinfo(mnum));
		return "/Mypage/settingtel";
	}
	
	
	//POST
	@RequestMapping(value = "UnameUpdate", method = RequestMethod.POST)
	public String UnameUpdate(MemberVO memberVO) throws Exception {
		memberService.UnameUpdate(memberVO);
		return "redirect:/mypage";
	}
	@RequestMapping(value = "UidUpdate", method = RequestMethod.POST)
	public String UidUpdate(MemberVO memberVO) throws Exception {
		memberService.UidUpdate(memberVO);
		return "redirect:/mypage";
	}
	@RequestMapping(value = "UhpUpdate", method = RequestMethod.POST)
	public String UhpUpdate(MemberVO memberVO) throws Exception {
		memberService.UhpUpdate(memberVO);
		return "redirect:/mypage";
	}
	
}
