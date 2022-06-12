package com.web.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.EstimateDAO;
import com.web.service.EstimateService;
import com.web.vo.EstimateVO;



@Service("estimateService")
public class EstimateServiceImpl implements EstimateService {
	@Autowired
	private EstimateDAO estimateMapper;

	@Override
	@Transactional
	public List<EstimateVO> selectEstimateList() throws Exception {
		return estimateMapper.selectEstimateList();
	}

	@Override
	public void insertEstimate(EstimateVO estimateVO) {
		estimateMapper.insertEstimate(estimateVO);
	}
	
	@Override
	public EstimateVO sentinfo(String esnum) {
		return estimateMapper.sentinfo(esnum);
	}
	
	@Override
	public boolean deleteSent(String esnum) {
		return estimateMapper.deleteSent(esnum);
	}
}
