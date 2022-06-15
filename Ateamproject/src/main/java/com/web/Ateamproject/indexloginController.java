package com.web.Ateamproject;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.domain.LoginDTO;
import com.web.service.MemberService;
import com.web.service.impl.MemberServiceImpl;

import com.web.vo.MemberVO;

@Controller

public class indexloginController {

	private final MemberService memberService;
	 @Inject
	    public indexloginController(MemberService memberService) {
	        this.memberService = memberService;
	    }

	 

	
	@RequestMapping(value="/indexlogin", method=RequestMethod.GET)
	public String indexloginGET(@ModelAttribute("loginDTO") LoginDTO loginDTO) {
		return "/user/indexlogin";
	}
	
	 @RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	 public ModelAndView loginPOST(LoginDTO loginDTO, HttpSession httpSession, Model model) throws Exception {
		 ModelAndView mv = new ModelAndView();
		 
		 
		 System.out.println(loginDTO.getId());
		 System.out.println(loginDTO.getpassword());
		 
		
		 
		mv.setViewName("index2");
		
		//


	       int login_result = memberService.login(loginDTO);
	       if(login_result == 1) {	
				httpSession.setAttribute("sid",loginDTO.getId());
				mv.addObject("login_result", "succ");
				mv.setViewName("index");
			}else {
				mv.addObject("login_result", "fail");
				mv.setViewName("/loginPost");
			}		
	        System.out.println("result--" + login_result);
	        
	      

		 return mv;

	    }
	 //로그아웃
	 @RequestMapping(value="/logout", method=RequestMethod.GET)
		public ModelAndView logout(HttpSession session) {
			ModelAndView mv = new ModelAndView();

			String sid = (String)session.getAttribute("sid");
			
			if(sid != null) {	
				session.invalidate();
				mv.addObject("sid",sid);
				mv.addObject("logout_result","succ");
			}		
			mv.setViewName("/index2");
			
			return mv;
		}
		
	
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String registerGET() throws Exception {
		return "/user/register";
		
	}
	//회원가입 처리 
	 @RequestMapping(value = "/register", method = RequestMethod.POST)
	    public String registerPOST(MemberVO memberVO, RedirectAttributes redirectAttributes) throws Exception {

		 System.out.println(memberVO.getID());  
		 
		 memberService.register(memberVO);
	        redirectAttributes.addFlashAttribute("msg", "REGISTERED");

	        return "redirect:/indexlogin";
	 }
	
	
	 
	@RequestMapping(value="/forgot", method=RequestMethod.GET)
	public String forgot() {
		return "/user/forgot";
	}
	
	@RequestMapping(value="/idcheck", method=RequestMethod.GET)
	public String idcheck() {
		return "/idcheck";
	}

	@RequestMapping(value="/reset", method=RequestMethod.GET)
	public String reset() {
		return "/user/reset";
	}
	@RequestMapping(value="/loginPost", method=RequestMethod.GET)
	public String loginPost() {
		return "/user/loginPost";
	}
	
}

