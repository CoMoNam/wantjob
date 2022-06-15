package com.web.dao.forum;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.web.vo.forum.Criteria;
import com.web.vo.forum.ForumVO;


@Repository
public class ForumDAOImpl implements ForumDAO {

	private static final String NAMESPACE = "com.web.dao.forum.ForumDAO";
	
	private final SqlSession sqlSession;
	
	@Inject
	public ForumDAOImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public int create(ForumVO forumVO) throws Exception{
		return sqlSession.insert(NAMESPACE + ".create", forumVO);
	} 
	
	@Override
	public ForumVO read(String pnum) throws Exception{
		return sqlSession.selectOne(NAMESPACE + ".read", pnum);
	}
	
	@Override
	public void update(ForumVO forumVO) throws Exception{
		sqlSession.update(NAMESPACE + ".update",forumVO);
	}
	
	@Override
	public void delete(String pnum) throws Exception{
		sqlSession.delete(NAMESPACE +".delete", pnum);
	}
	@Override
	public List<ForumVO> listAll()throws Exception{
		return sqlSession.selectList(NAMESPACE + ".listAll");
	}
	
	@Override
	public List<ForumVO> getListPaging(Criteria cri) throws Exception{
		return sqlSession.selectList(NAMESPACE + ".getListPaging", cri);
	}
	@Override
	public int getTotal() throws Exception{
		return sqlSession.selectOne(NAMESPACE + ".getTotal");
	}

	@Override
	public void updatePhits(String pnum) throws Exception{
		sqlSession.update(NAMESPACE + ".updatePhits", pnum); 
	}
	
	@Override
	public void insertFile(Map<String, Object>map) throws Exception{
		sqlSession.insert(NAMESPACE + ".insertFile", map);
	}
	
	@Override
	public List<Map<String, Object>> selectFileList(String pnum) throws Exception{
		return sqlSession.selectList(NAMESPACE + ".selectFileList", pnum); 
	}
	
	@Override
	public Map<String, Object> selectFileInfo(Map<String, Object>map) throws Exception{
		return sqlSession.selectOne(NAMESPACE + ".selectFileInfo", map);
	}
	
	@Override
	public void updateFile(Map<String, Object>map) throws Exception{
		sqlSession.update(NAMESPACE + ".updateFile",map);
	}
}
