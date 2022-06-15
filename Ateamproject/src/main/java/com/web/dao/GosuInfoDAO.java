package com.web.dao;

import java.util.List;

import com.web.vo.GosuInfoVO;

public interface GosuInfoDAO {
	List<GosuInfoVO> selectGosuInfoList() throws Exception;

}
