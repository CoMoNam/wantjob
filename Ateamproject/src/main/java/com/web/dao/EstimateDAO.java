package com.web.dao;

import java.util.List;

import com.web.vo.EstimateVO;


public interface EstimateDAO {
	
	
	
	List<EstimateVO> selectEstimateList() throws Exception;
	void insertEstimate(EstimateVO estimateVO);
	public EstimateVO sentinfo(String esnum);
	public boolean deleteSent(String esnum);
}
