package com.web.service;





import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.dao.MemberDAO;
import com.web.domain.LoginDTO;
import com.web.vo.MemberVO;



public interface MemberService  {
	void register(MemberVO memberVO) throws Exception;

	int login(LoginDTO loginDTO) throws Exception;

	// 회원 목록 
		public List<MemberVO> memberList();
		// 회원 입력
		public void insertMember(MemberVO vo);
		// 회원 정보 상세보기
		public  MemberVO viewMember(String ID) ;
		
		

		// 회원삭제
		public void deleteMember(String ID);
		// 회원정보 수정
		public void updateMember(MemberVO vo);
	

	
	

}

