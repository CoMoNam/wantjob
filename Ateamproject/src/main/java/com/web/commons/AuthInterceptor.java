package com.web.commons;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;


    public class AuthInterceptor extends HandlerInterceptorAdapter {

        private static final Logger logger = LoggerFactory.getLogger(AuthInterceptor.class);
       
        // ?éò?ù¥Ïß? ?öîÏ≤? ?†ïÎ≥? ???û•
        private void saveDestination(HttpServletRequest request) {
            String uri = request.getRequestURI();
            String query = request.getQueryString();
            if (query == null || query.equals("null")) {
                query = "";
            } else {
                query = "?" + query;
            }

            if (request.getMethod().equals("GET")) {
                logger.info("destination : " + (uri + query));
                request.getSession().setAttribute("destination", uri + query);
            }
        }



        @Override
        public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

            HttpSession httpSession = request.getSession();

            if (httpSession.getAttribute("login") == null) {
                logger.info("current user is not logged");
                response.sendRedirect("/user/login");
                return false;
            }

            return true;
        }
        }
    


