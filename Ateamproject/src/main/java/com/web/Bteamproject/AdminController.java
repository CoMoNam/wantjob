package com.web.Bteamproject;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	/**관리자 메인 페이지**/
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String admin() {
		return "/admin/admin";
	}
	/**관리자 회원관리 페이지**/
	@RequestMapping(value="/adminmember", method=RequestMethod.GET)
	public String adminmember() {
		return "/admin/adminmember";
	}
	/**관리자 회원정보 페이지**/
	@RequestMapping(value="/adminmemberinfo", method=RequestMethod.GET)
	public String adminmemberinfo() {
		return "/admin/adminmemberinfo";
	}
	/**관리자 공지사항관리 페이지**/
	@RequestMapping(value="/adminnotice", method=RequestMethod.GET)
	public String adminnotice() {
		return "/admin/adminnotice";
	}
	/**관리자 공지사항정보 페이지**/
	@RequestMapping(value="/adminnoticeinfo", method=RequestMethod.GET)
	public String adminnoticeinfo() {
		return "/admin/adminnoticeinfo";
	}
	/**관리자 공지사항수정 페이지**/
	@RequestMapping(value="/adminnoticesj", method=RequestMethod.GET)
	public String adminnoticesj() {
		return "/admin/adminnoticesj";
	}
	/**관리자 공지사항작성 페이지**/
	@RequestMapping(value="/adminmakenotice", method=RequestMethod.GET)
	public String adminmakenotice() {
		return "/admin/adminmakenotice";
	}
	/**관리자 게시판관리 페이지**/
	@RequestMapping(value="/adminpost", method=RequestMethod.GET)
	public String adminpost() {
		return "/admin/adminpost";
	}
	/**관리자 게시판정보 페이지**/
	@RequestMapping(value="/adminpostinfo", method=RequestMethod.GET)
	public String adminpostinfo() {
		return "/admin/adminpostinfo";
	}
	
	
}

