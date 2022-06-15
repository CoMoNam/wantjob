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
       
        // 페이지 요청 정보 저장
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

        
        		
        		/**
        		 * This implementation always returns <code>true</code>.
        		 */
        			
        			//1. request 객체에서 세션정보 얻어오기
        			HttpSession session = request.getSession();
        			String sid = (String)session.getAttribute("sid");
        			
        			//2. 세션정보 체크 및 페이지 이동
        			if(sid == null) {
        				response.sendRedirect("http://localhost:9000/mycgv/login.do?auth_result=fail");
        				
        				return false;
        			}
        			
        			return true;
        		}
        	}



