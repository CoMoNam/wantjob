package com.web.service;

import java.util.List;

import com.web.vo.MembersVO;





public interface MembersService {
	List<MembersVO> selectMembersList() throws Exception;
	public MembersVO mypageUinfo(String mnum);
	
	//��������
	void memberUpdate(MembersVO membersVO)throws Exception;
}
