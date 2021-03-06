package com.web.commons;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor extends HandlerInterceptorAdapter  {
	private static final String LOGIN = "login";
    private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);


    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    	HttpSession httpSession = request.getSession();
        ModelMap modelMap = modelAndView.getModelMap();
        Object memberVO =  modelMap.get("user");
        
        if (memberVO != null) {
            logger.info("new login success");
            httpSession.setAttribute(LOGIN, memberVO);
            Object destination = httpSession.getAttribute("destination");
            response.sendRedirect(destination != null ? (String) destination : "/");
        }
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        HttpSession httpSession = request.getSession();
        // 기존??? 로그??? ?????? ??????
        if (httpSession.getAttribute(LOGIN) != null) {
            logger.info("clear login data before");
            httpSession.removeAttribute(LOGIN);
        }

        return true;
    }
}


