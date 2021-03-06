package com.web.dao.forum;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.web.vo.forum.Criteria;
import com.web.vo.forum.ForumVO;


public interface ForumDAO {

	int create(ForumVO forumVO) throws Exception; //κΈ? ?±λ‘?
	ForumVO read(String pnum) throws Exception; //μ‘°ν
	void update(ForumVO forumVO) throws Exception; //?? 
	void delete(String pnum) throws Exception; //?­? 
	List<ForumVO> listAll() throws Exception; // λ¦¬μ€?Έ μ‘°ν 
	List<ForumVO> getListPaging(Criteria cri) throws Exception; //κ²μ? λͺ©λ‘(??΄μ§? μ²λ¦¬)
	int getTotal() throws Exception; //μ΄? κ²μλ¬? ?
	void updatePhits(String pnum) throws Exception; // μ‘°ν? μ¦κ?
	void insertFile(Map<String, Object> map) throws Exception; //??Ό(insert)
	List<Map<String, Object>> selectFileList(String pnum) throws Exception; //??Ό λ¦¬μ€?Έ
	public Map<String, Object> selectFileInfo(Map<String, Object>map) throws Exception; //??Ό ?€?΄λ‘λ
	public void updateFile(Map<String, Object>map) throws Exception; //??Ό ??  
}
