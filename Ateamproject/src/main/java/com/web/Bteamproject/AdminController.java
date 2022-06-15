package com.web.Bteamproject;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	/**������ ���� ������**/
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String admin() {
		return "/admin/admin";
	}
	/**������ ȸ������ ������**/
	@RequestMapping(value="/adminmember", method=RequestMethod.GET)
	public String adminmember() {
		return "/admin/adminmember";
	}
	/**������ ȸ������ ������**/
	@RequestMapping(value="/adminmemberinfo", method=RequestMethod.GET)
	public String adminmemberinfo() {
		return "/admin/adminmemberinfo";
	}
	/**������ �������װ��� ������**/
	@RequestMapping(value="/adminnotice", method=RequestMethod.GET)
	public String adminnotice() {
		return "/admin/adminnotice";
	}
	/**������ ������������ ������**/
	@RequestMapping(value="/adminnoticeinfo", method=RequestMethod.GET)
	public String adminnoticeinfo() {
		return "/admin/adminnoticeinfo";
	}
	/**������ �������׼��� ������**/
	@RequestMapping(value="/adminnoticesj", method=RequestMethod.GET)
	public String adminnoticesj() {
		return "/admin/adminnoticesj";
	}
	/**������ ���������ۼ� ������**/
	@RequestMapping(value="/adminmakenotice", method=RequestMethod.GET)
	public String adminmakenotice() {
		return "/admin/adminmakenotice";
	}
	/**������ �Խ��ǰ��� ������**/
	@RequestMapping(value="/adminpost", method=RequestMethod.GET)
	public String adminpost() {
		return "/admin/adminpost";
	}
	/**������ �Խ������� ������**/
	@RequestMapping(value="/adminpostinfo", method=RequestMethod.GET)
	public String adminpostinfo() {
		return "/admin/adminpostinfo";
	}
	
	
}

