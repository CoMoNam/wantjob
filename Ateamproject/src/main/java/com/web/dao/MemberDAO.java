package com.web.dao;




import org.apache.ibatis.session.SqlSession;

import java.util.List;

import org.apache.ibatis.jdbc.SQL;

import com.web.domain.LoginDTO;
import com.web.vo.MemberVO;



public interface MemberDAO {
	void register(MemberVO memberVO) throws Exception;

	public void remove(MemberVO vo) throws Exception;

	public String login(LoginDTO loginDTO) throws Exception;

	public List<MemberVO> memberList();
	// �쉶�썝 �엯�젰
	public void insertMember(MemberVO vo);
	// �쉶�썝 �젙蹂� �긽�꽭蹂닿린
	public MemberVO viewMember(String ID);
	// �쉶�썝�궘�젣
	public void deleteMember(String ID);
	// �쉶�썝�젙蹂� �닔�젙
	public void updateMember(MemberVO ID);
	
	public MemberVO mypageUinfo(String mnum);
	
	void UnameUpdate(MemberVO memberVO) throws Exception;
	void UidUpdate(MemberVO memberVO) throws Exception;
	void UhpUpdate(MemberVO memberVO) throws Exception;
}

