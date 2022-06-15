package com.web.service;





import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.dao.MemberDAO;
import com.web.domain.LoginDTO;
import com.web.vo.MemberVO;



public interface MemberService {
	void register(MemberVO memberVO) throws Exception;

	public String login(LoginDTO loginDTO) throws Exception;

	void register(String memberVO);
	
	public MemberVO mypageUinfo(String mnum);
	void UnameUpdate(MemberVO memberVO)throws Exception;
	void UidUpdate(MemberVO memberVO)throws Exception;
	void UhpUpdate(MemberVO memberVO)throws Exception;
	
	

}

