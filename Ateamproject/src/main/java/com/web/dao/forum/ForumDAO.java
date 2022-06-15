package com.web.dao.forum;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.web.vo.forum.Criteria;
import com.web.vo.forum.ForumVO;


public interface ForumDAO {

	int create(ForumVO forumVO) throws Exception; //ê¸? ?“±ë¡?
	ForumVO read(String pnum) throws Exception; //ì¡°íšŒ
	void update(ForumVO forumVO) throws Exception; //?ˆ˜? •
	void delete(String pnum) throws Exception; //?‚­? œ
	List<ForumVO> listAll() throws Exception; // ë¦¬ìŠ¤?Š¸ ì¡°íšŒ 
	List<ForumVO> getListPaging(Criteria cri) throws Exception; //ê²Œì‹œ?Œ ëª©ë¡(?˜?´ì§? ì²˜ë¦¬)
	int getTotal() throws Exception; //ì´? ê²Œì‹œë¬? ?ˆ˜
	void updatePhits(String pnum) throws Exception; // ì¡°íšŒ?ˆ˜ ì¦ê?
	void insertFile(Map<String, Object> map) throws Exception; //?ŒŒ?¼(insert)
	List<Map<String, Object>> selectFileList(String pnum) throws Exception; //?ŒŒ?¼ ë¦¬ìŠ¤?Š¸
	public Map<String, Object> selectFileInfo(Map<String, Object>map) throws Exception; //?ŒŒ?¼ ?‹¤?š´ë¡œë“œ
	public void updateFile(Map<String, Object>map) throws Exception; //?ŒŒ?¼ ?ˆ˜? • 
}
