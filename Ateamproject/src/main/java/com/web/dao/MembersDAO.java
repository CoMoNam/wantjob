package com.web.dao;

import java.util.List;

import com.web.vo.MembersVO;





public interface MembersDAO {
	List<MembersVO> selectMembersList() throws Exception;
	public MembersVO mypageUinfo(String mnum);
	
	//유저회원정보수정
	void memberUpdate(MembersVO membersVO) throws Exception;
}
