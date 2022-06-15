package com.web.Bteamproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ChatlistController {

	@RequestMapping(value="/chatlist", method=RequestMethod.GET)
	public String chatlist() {
		return "/Chat/chatlist";
	}




	@RequestMapping(value="/requestChat", method=RequestMethod.GET)
	public String requestChat() {
		return "/Chat/requestChat";
	}



@RequestMapping(value="/chatform", method=RequestMethod.GET)
public String chatform() {
	return "/Chat/chatform";
}


@RequestMapping(value="/sendingChat", method=RequestMethod.GET)
public String sendingChat() {
	return "/Chat/sendingChat";
}


}

