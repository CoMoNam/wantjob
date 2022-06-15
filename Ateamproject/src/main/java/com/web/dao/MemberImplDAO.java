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

	    // �쉶�썝媛��엯泥섎━
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
	  	 // 01. 전체 회원 목록 조회
	  		@Override
	  		public List<MemberVO> memberList() {
	  			return sqlSession.selectList("member.memberList");
	  		}
	  		// 02. 회원 등록
	  		@Override
	  		public void insertMember(MemberVO vo) {
	  			sqlSession.insert("member.insertMember", vo);
	  		}
	  		// 03. 회원 정보 상세 조회
	  		@Override
	  		public MemberVO viewMember(String ID) {
	  			return sqlSession.selectOne("member.viewMember", ID);
	  		}
	  		// 04. 회원 정보 수정 처리
	  		@Override
	  		public void deleteMember(String ID) {
	  			sqlSession.delete("member.deleteMember",ID);
	  		}
	  		// 05. 회원 정보 삭제 처리
	  		@Override
	  		public void updateMember(MemberVO vo) {
	  			sqlSession.update("member.updateMember", vo);
	  		
	  		}
	    
	    
	    

	    //정보가져오기
		@Override
		public MemberVO mypageUinfo(String mnum) {
			// TODO Auto-generated method stub
			return sqlSession.selectOne(NAMESPACE +".mypageUinfo"+mnum) ;
		}

		//업데이트
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


