package com.web.dao;

import java.util.List;

import com.web.vo.MembersVO;





public interface MembersDAO {
	List<MembersVO> selectMembersList() throws Exception;
	public MembersVO mypageUinfo(String mnum);
	
	//����ȸ����������
	void memberUpdate(MembersVO membersVO) throws Exception;
}
