package com.web.dao;

import java.lang.reflect.Member;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.web.domain.LoginDTO;
import com.web.vo.MemberVO;

@Repository
public class  MemberImplDAO  implements MemberDAO{
	
	
	 private static final String NAMESPACE= "com.web.dao.MemberDAO";

	 private final SqlSession sqlSession;
	
		
	    @Inject
	    public MemberImplDAO(SqlSession sqlSession) {
	        this.sqlSession = sqlSession;
	    }

	    // ÔøΩÏâ∂ÔøΩÏçùÂ™õÔøΩÔøΩÏóØÔß£ÏÑé?îÅ
	    @Override
	    public void register(MemberVO memberVO) throws Exception {
	        sqlSession.insert(NAMESPACE + ".register",  memberVO);
	    }
	    
	    //login
	    @Override
	    public String  login(LoginDTO loginDTO) throws Exception {
	        return sqlSession.selectOne(NAMESPACE + ".login", loginDTO);
	    }
	    
	    @Override
	  		public void remove(MemberVO vo) throws Exception {
	  	    	sqlSession.delete(NAMESPACE+ ".remove", vo);
	  	    }
	  	 // 01. ?†ÑÏ≤? ?öå?õê Î™©Î°ù Ï°∞Ìöå
	  		@Override
	  		public List<MemberVO> memberList() {
	  			return sqlSession.selectList("member.memberList");
	  		}
	  		// 02. ?öå?õê ?ì±Î°?
	  		@Override
	  		public void insertMember(MemberVO vo) {
	  			sqlSession.insert("member.insertMember", vo);
	  		}
	  		// 03. ?öå?õê ?†ïÎ≥? ?ÉÅ?Ñ∏ Ï°∞Ìöå
	  		@Override
	  		public MemberVO viewMember(String ID) {
	  			return sqlSession.selectOne("member.viewMember", ID);
	  		}
	  		// 04. ?öå?õê ?†ïÎ≥? ?àò?†ï Ï≤òÎ¶¨
	  		@Override
	  		public void deleteMember(String ID) {
	  			sqlSession.delete("member.deleteMember",ID);
	  		}
	  		// 05. ?öå?õê ?†ïÎ≥? ?Ç≠?†ú Ï≤òÎ¶¨
	  		@Override
	  		public void updateMember(MemberVO vo) {
	  			sqlSession.update("member.updateMember", vo);
	  		
	  		}
	    
	    
	    

	    //?†ïÎ≥¥Í??†∏?ò§Í∏?
		@Override
		public MemberVO mypageUinfo(String mnum) {
			// TODO Auto-generated method stub
			return sqlSession.selectOne(NAMESPACE +".mypageUinfo"+mnum) ;
		}

		//?óÖ?ç∞?ù¥?ä∏
		@Override
		public void UnameUpdate(MemberVO memberVO) throws Exception {
			sqlSession.update(NAMESPACE+ ".UnameUpdate",memberVO);

		}

		@Override
		public void UidUpdate(MemberVO memberVO) throws Exception {
			sqlSession.update(NAMESPACE+ ".UidUpdate",memberVO);
		}

		@Override
		public void UhpUpdate(MemberVO memberVO) throws Exception {
			sqlSession.update(NAMESPACE+ ".UhpUpdate",memberVO);
		}
}


