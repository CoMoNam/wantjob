package com.web.service.forum;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.web.vo.forum.Criteria;
import com.web.vo.forum.ForumVO;

public interface ForumService {
	void create(ForumVO forumVO, MultipartHttpServletRequest mpRequest) throws Exception; //κΈ? ?±λ‘?
	ForumVO read(String pnum) throws Exception; //μ‘°ν
//	void update(ForumVO forumVO) throws Exception; //?? 
	void delete(String pnum) throws Exception; //?­? 
	List<ForumVO> listAll() throws Exception; // λ¦¬μ€?Έ μ‘°ν 
	public List<ForumVO> getListPaging(Criteria cri) throws Exception; //??΄μ§?
	int getTotal() throws Exception; //μ΄? κ°μλ¬? ? 
	List<Map<String, Object>> selectFileList(String pnum) throws Exception;
	public Map<String, Object> selectFileInfo(Map<String, Object>map)throws Exception;
	public void update(ForumVO forumVO, String[] files, String[] fileNames, MultipartHttpServletRequest mpRequest) throws Exception; //?? +??Ό
}
