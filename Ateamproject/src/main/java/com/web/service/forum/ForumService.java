package com.web.service.forum;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.web.vo.forum.Criteria;
import com.web.vo.forum.ForumVO;

public interface ForumService {
	void create(ForumVO forumVO, MultipartHttpServletRequest mpRequest) throws Exception; //글 등록
	ForumVO read(String pnum) throws Exception; //조회
//	void update(ForumVO forumVO) throws Exception; //수정
	void delete(String pnum) throws Exception; //삭제
	List<ForumVO> listAll() throws Exception; // 리스트 조회 
	public List<ForumVO> getListPaging(Criteria cri) throws Exception; //페이징
	int getTotal() throws Exception; //총 개시물 수 
	List<Map<String, Object>> selectFileList(String pnum) throws Exception;
	public Map<String, Object> selectFileInfo(Map<String, Object>map)throws Exception;
	public void update(ForumVO forumVO, String[] files, String[] fileNames, MultipartHttpServletRequest mpRequest) throws Exception; //수정+파일
}
