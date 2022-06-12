package com.web.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.MembersDAO;
import com.web.dao.MembersDAOImpl;
import com.web.service.MembersService;
import com.web.vo.MembersVO;



@Service("membersService")
public class MembersServiceImpl implements MembersService {
	@Autowired
	private MembersDAO membersMapper;
	


	@Override
	@Transactional
	public List<MembersVO> selectMembersList() throws Exception {
		return membersMapper.selectMembersList();
	}

	@Override
	public MembersVO mypageUinfo(String mnum) {
		// TODO Auto-generated method stub
		return membersMapper.mypageUinfo(mnum);
	}

	/*@Override
	public void memberUpdate(MembersVO vo) throws Exception {
		// TODO Auto-generated method stub
		membersMapper.memberUpdate(vo);*/
	@Override
	public void memberUpdate(MembersVO membersVO)throws Exception {
		membersMapper.memberUpdate(membersVO);
		
	}

}
