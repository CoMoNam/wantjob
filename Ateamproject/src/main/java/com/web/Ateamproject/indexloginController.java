package com.web.Ateamproject;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.domain.LoginDTO;
import com.web.service.MemberService;

import com.web.vo.MemberVO;

@Controller

public class indexloginController {

	
	  private final MemberService memberService;
	  
	  @Inject public indexloginController(MemberService memberService) {
	  this.memberService = memberService; }
	 
	
	 
	 
	@RequestMapping(value="/indexlogin", method=RequestMethod.GET)
	public String indexloginGET(@ModelAttribute("loginDTO") LoginDTO loginDTO, MemberVO vo) {
		return "/user/indexlogin";
	}
	
	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public String index(LoginDTO loginDTO, HttpSession httpSession, Model model,MemberVO memberVO) throws Exception {
		httpSession.getAttribute(loginDTO.getMnum());
		String login_result = memberService.login(loginDTO);
		
		  if(login_result != null) {
			  System.out.println("id:"+loginDTO.getId());
			  System.out.println("pw:"+loginDTO.getpassword());
			  System.out.println("mnum:"+loginDTO.getMnum());
			  System.out.println("login_result:"+login_result);
			  memberVO.setMnum(login_result);
			  memberVO.setID(loginDTO.getId());
			  memberVO.setpassword(loginDTO.getpassword());
			  httpSession.setAttribute("sid",loginDTO.getId());
			  httpSession.setAttribute("smnum", memberVO.getMnum());
			  httpSession.setAttribute("spw", memberVO.getpassword());
			  httpSession.setAttribute("shp", memberVO.gethp());
			  
			  System.out.println("VOid:" + memberVO.getID());
			  System.out.println("VOname:" + memberVO.getname());
			  System.out.println("VOpw:" + memberVO.getpassword());
			  System.out.println("mnum:"+memberVO.getMnum());
			  return "index";
		  } else {
			  System.out.println("?ã§?å®");
			  model.addAttribute("msg", "FAILURE");
			  return "redirect:/indexlogin";
		  }
	    }
		
	 //Î°úÍ∑∏?ïÑ?õÉ
	 @RequestMapping(value="/logout", method=RequestMethod.GET)
		public ModelAndView logout(HttpSession session) {
			ModelAndView mv = new ModelAndView();

			String sid = (String)session.getAttribute("sid");
			
			if(sid != null) {	
				session.invalidate();
				mv.addObject("sid",sid);
				mv.addObject("logout_result","succ");
			}		
			mv.setViewName("/index");
			
			return mv;
		}
	 
	 
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String registerGET() throws Exception {
		return "/user/register";
		
	}
	//?öå?õêÍ∞??ûÖ Ï≤òÎ¶¨ 
	 @RequestMapping(value = "/register", method = RequestMethod.POST)
	    public String registerPOST(MemberVO memberVO, RedirectAttributes redirectAttributes) throws Exception {

	       
	        memberService.register(memberVO);
	        
	        redirectAttributes.addFlashAttribute("msg", "REGISTERED");
	        System.out.println("?öå?õê="+memberVO.getID());
	        

	        return "redirect:/indexlogin";
	 }
	
	
	 
	@RequestMapping(value="/forgot", method=RequestMethod.GET)
	public String forgot() {
		return "/user/forgot";
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

