package com.web.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;


import org.apache.ibatis.session.SqlSession;

import java.util.List;

import org.apache.ibatis.jdbc.SQL;

import com.web.domain.LoginDTO;
import com.web.vo.MemberVO;



public interface MemberDAO {
	 

	
	void register(MemberVO memberVO) throws Exception;

	public void remove(MemberVO vo) throws Exception;

	int login(LoginDTO loginDTO) throws Exception;

	public List<MemberVO> memberList();
	// 회원 입력
	public void insertMember(MemberVO vo);
	// 회원 정보 상세보기
	public MemberVO viewMember(String ID);
	// 회원삭제
	public void deleteMember(String ID);
	// 회원정보 수정
	public void updateMember(MemberVO ID);
	
	 }


