package com.web.service.forum;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.web.vo.forum.Criteria;
import com.web.vo.forum.ForumVO;

public interface ForumService {
	void create(ForumVO forumVO, MultipartHttpServletRequest mpRequest) throws Exception; //Í∏? ?ì±Î°?
	ForumVO read(String pnum) throws Exception; //Ï°∞Ìöå
//	void update(ForumVO forumVO) throws Exception; //?àò?†ï
	void delete(String pnum) throws Exception; //?Ç≠?†ú
	List<ForumVO> listAll() throws Exception; // Î¶¨Ïä§?ä∏ Ï°∞Ìöå 
	public List<ForumVO> getListPaging(Criteria cri) throws Exception; //?éò?ù¥Ïß?
	int getTotal() throws Exception; //Ï¥? Í∞úÏãúÎ¨? ?àò 
	List<Map<String, Object>> selectFileList(String pnum) throws Exception;
	public Map<String, Object> selectFileInfo(Map<String, Object>map)throws Exception;
	public void update(ForumVO forumVO, String[] files, String[] fileNames, MultipartHttpServletRequest mpRequest) throws Exception; //?àò?†ï+?åå?ùº
}
