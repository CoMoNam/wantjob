package com.web.service;

import java.util.List;

import com.web.vo.EstimateVO;



public interface EstimateService {
	List<EstimateVO> selectEstimateList() throws Exception;
	void insertEstimate(EstimateVO estimateVO);
	
	public EstimateVO sentinfo(String esnum);
	public boolean deleteSent(String esnum);
}
