package com.web.service.impl;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.web.vo.MemberVO;
import com.web.dao.MemberDAO;
import com.web.dao.MemberImplDAO;
import com.web.domain.LoginDTO;
import com.web.service.MemberService;



@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
    private final MemberDAO memberDAO;
  
    
    @Inject
    public MemberServiceImpl(MemberDAO memberDAO) {
        this.memberDAO = memberDAO;
    }

    // ?öå?õê Í∞??ûÖ Ï≤òÎ¶¨
    @Override
    public void register(MemberVO memberVO) throws Exception {
        memberDAO.register(memberVO);
    
    }
    //Î°úÍ∑∏?ù∏
    @Override
    public String login(LoginDTO loginDTO) throws Exception {
    	return memberDAO.login(loginDTO);
    }

	@Override
	public void register(String memberVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public MemberVO mypageUinfo(String mnum) {
		return memberDAO.mypageUinfo(mnum);

	}

	@Override
	public void UnameUpdate(MemberVO memberVO) throws Exception {
		memberDAO.UnameUpdate(memberVO);
	}

	@Override
	public void UidUpdate(MemberVO memberVO) throws Exception {
		memberDAO.UidUpdate(memberVO);
	}

	@Override
	public void UhpUpdate(MemberVO memberVO) throws Exception {
		memberDAO.UhpUpdate(memberVO);
	}
} 