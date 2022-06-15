package com.web.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.BteamDAO;
import com.web.service.BteamService;
import com.web.vo.BteamVO;


@Service("bteamService")
public class BteamServiceImpl implements BteamService {
	@Autowired
	private BteamDAO bteamMapper;

	@Override
	@Transactional
	public List<BteamVO> selectBteamList() throws Exception {
		return bteamMapper.selectBteamList();
	}

}
