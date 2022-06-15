package com.web.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.web.vo.MemberVO;
import com.web.dao.MemberDAO;
import com.web.dao.MemberImplDAO;
import com.web.domain.LoginDTO;
import com.web.service.MemberService;




@Service
public  class MemberServiceImpl implements MemberService {
	@Autowired	
private  MemberDAO memberDAO;
  
    
    @Inject
    public MemberServiceImpl(MemberDAO memberDAO) {
        this.memberDAO = memberDAO;
    }

    // 회원 가입 처리
    @Override
    public void register(MemberVO memberVO) throws Exception {
    	memberDAO.register(memberVO);
    }  
   

    //로그인
    @Override
    public int login(LoginDTO loginDTO) throws Exception {
    	return memberDAO.login(loginDTO);
    }
    
    	
	
	
    
 // 01. 전체 회원 목록 조회
 	@Override
 	public List<MemberVO> memberList() {
 		return memberDAO.memberList();
 	}
 	
 	// 02. 회원 등록
 	@Override
 	public void insertMember(MemberVO vo) {
 		memberDAO.insertMember(vo);
 	}
 	// 03. 회원 정보 상세 조회 
 	@Override
 	public MemberVO viewMember(String ID) {
 		return memberDAO.viewMember(ID);
 	}
 	// 04. 회원 정보 수정 처리
 	@Override
 	public void deleteMember(String ID) {
 		memberDAO.deleteMember(ID);
 	}
 	// 05. 회원 정보 삭제 처리
 	@Override
 	public void updateMember(MemberVO vo) {
 		memberDAO.updateMember(vo);
 	}
	

	}
	
