package com.web.dao;

import java.util.List;

import com.web.vo.BteamVO;



public interface BteamDAO {
	List<BteamVO> selectBteamList() throws Exception;
}
