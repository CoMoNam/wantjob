package com.web.service;

import java.util.List;

import com.web.vo.BteamVO;



public interface BteamService {
	List<BteamVO> selectBteamList() throws Exception;
}
