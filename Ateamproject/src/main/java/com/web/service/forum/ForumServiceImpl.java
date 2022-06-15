package com.web.service.forum;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.web.commons.util.FileUtils;
import com.web.dao.forum.ForumDAO;
import com.web.vo.forum.Criteria;
import com.web.vo.forum.ForumVO;


@Service
public class ForumServiceImpl implements ForumService{
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Inject
	private ForumDAO forumDAO;
		

	
	@Override
	public void create(ForumVO forumVO, MultipartHttpServletRequest mpRequest)throws Exception{
		int post_result = forumDAO.create(forumVO);
		
		
System.out.println("post_result--" + post_result);		
		
	
		List<Map<String, Object>> list = fileUtils.parseInsertFileInfo(forumVO, mpRequest);
		int size = list.size();
		for(int i=0; i<size; i++) {
			forumDAO.insertFile(list.get(i));
		} //?´ë¶?ë¶„ì´ ?“±ë¡? êµ¬í˜„?ž…?‹ˆ?‹¤
	}
	
	
	@Override
	public ForumVO read(String pnum) throws Exception{
		forumDAO.updatePhits(pnum);
		return forumDAO.read(pnum);
	}
	
	
//	@Override
//	public void update(ForumVO forumVO)throws Exception{
//		forumDAO.update(forumVO);
//	}
	
	
	@Override
	public void delete(String pnum) throws Exception{
		forumDAO.delete(pnum);
	}
	
	@Override
	public List<ForumVO> listAll() throws Exception{
		return forumDAO.listAll();
	}
	
	@Override
	public List<ForumVO> getListPaging(Criteria cri)throws Exception{
		return forumDAO.getListPaging(cri);
	}

	@Override
	public int getTotal() throws Exception {
		return forumDAO.getTotal();
		
	}
	
	@Override
	public List<Map<String, Object>> selectFileList(String pnum) throws Exception{
		return forumDAO.selectFileList(pnum);
	}
	
	@Override
	public Map<String, Object> selectFileInfo(Map<String, Object>map) throws Exception{
		return forumDAO.selectFileInfo(map);
	}
	
	@Override
	public void update(ForumVO forumVO, String[] files, String[] filesName,MultipartHttpServletRequest mpRequest) throws Exception{
		forumDAO.update(forumVO);
		
		List<Map<String, Object>> list = fileUtils.parseUpdateFileInfo(forumVO, filesName, files, mpRequest);
		Map<String, Object> tempMap = null;
		int size =list.size();
		for(int i=0; i<size; i++) {
			tempMap = list.get(i);
			if(tempMap.get("IS_NEW").equals("Y")) {
				forumDAO.insertFile(tempMap);
			}
			else {
				forumDAO.updateFile(tempMap);
			}
		}
	}
	
	
	
	
}
