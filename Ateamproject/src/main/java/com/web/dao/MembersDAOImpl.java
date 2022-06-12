package com.web.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.web.vo.MembersVO;

public class MembersDAOImpl implements MembersDAO {
	private static final String NAMESPACE = "com.web.dao.MembersDAO";
	
	private final SqlSession sqlSession;
	
	@Inject
	public MembersDAOImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<MembersVO> selectMembersList() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE +".selectMembersList");
	}

	@Override
	public MembersVO mypageUinfo(String mnum) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE +".mypageUinfo"+mnum) ;
	}

	/*
	 * @Override public void memberUpdate(MembersVO vo) throws Exception { // TODO
	 * Auto-generated method stub sqlSession.update("membersMapper.memberUpdate",
	 * vo);
	 * 
	 * }
	 */
	@Override
	public void memberUpdate(MembersVO membersVO)throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(NAMESPACE+ ".memberUpdate",membersVO);
		
	}

}
