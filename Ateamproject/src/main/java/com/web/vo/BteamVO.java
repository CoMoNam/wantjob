package com.web.vo;

import java.util.Date;

public class BteamVO {
	private String chnum;
	private String rcontent;
	private Integer rscore;
	private Date rdate;
	
	
	





	public String getChnum() {
		return chnum;
	}








	public void setChnum(String chnum) {
		this.chnum = chnum;
	}








	public String getRcontent() {
		return rcontent;
	}








	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}








	public Integer getRscore() {
		return rscore;
	}








	public void setRscore(Integer rscore) {
		this.rscore = rscore;
	}








	public Date getRdate() {
		return rdate;
	}








	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}








	@Override
	public String toString() {
		return "BteamVO [chnum=" + chnum + ", rcontent=" + rcontent +", rscore=" + rscore + ", rdate=" + rdate +"]";
	}

}
