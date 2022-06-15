package com.web.dao.forum;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.web.vo.forum.Criteria;
import com.web.vo.forum.ForumVO;


public interface ForumDAO {

	int create(ForumVO forumVO) throws Exception; //글 등록
	ForumVO read(String pnum) throws Exception; //조회
	void update(ForumVO forumVO) throws Exception; //수정
	void delete(String pnum) throws Exception; //삭제
	List<ForumVO> listAll() throws Exception; // 리스트 조회 
	List<ForumVO> getListPaging(Criteria cri) throws Exception; //게시판 목록(페이지 처리)
	int getTotal() throws Exception; //총 게시물 수
	void updatePhits(String pnum) throws Exception; // 조회수 증가
	void insertFile(Map<String, Object> map) throws Exception; //파일(insert)
	List<Map<String, Object>> selectFileList(String pnum) throws Exception; //파일 리스트
	public Map<String, Object> selectFileInfo(Map<String, Object>map) throws Exception; //파일 다운로드
	public void updateFile(Map<String, Object>map) throws Exception; //파일 수정 
}
