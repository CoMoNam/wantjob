package com.web.dao.forum;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.web.vo.forum.Criteria;
import com.web.vo.forum.ForumVO;


public interface ForumDAO {

	int create(ForumVO forumVO) throws Exception; //�? ?���?
	ForumVO read(String pnum) throws Exception; //조회
	void update(ForumVO forumVO) throws Exception; //?��?��
	void delete(String pnum) throws Exception; //?��?��
	List<ForumVO> listAll() throws Exception; // 리스?�� 조회 
	List<ForumVO> getListPaging(Criteria cri) throws Exception; //게시?�� 목록(?��?���? 처리)
	int getTotal() throws Exception; //�? 게시�? ?��
	void updatePhits(String pnum) throws Exception; // 조회?�� 증�?
	void insertFile(Map<String, Object> map) throws Exception; //?��?��(insert)
	List<Map<String, Object>> selectFileList(String pnum) throws Exception; //?��?�� 리스?��
	public Map<String, Object> selectFileInfo(Map<String, Object>map) throws Exception; //?��?�� ?��?��로드
	public void updateFile(Map<String, Object>map) throws Exception; //?��?�� ?��?�� 
}
