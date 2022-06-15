package com.web.vo.forum;

import java.util.Date;

public class CommentVO {

	private String conum;
	private String pnum;
	private String mnum;
	private String id;
	private String cocontent;
	private Date codate;
	public String getConum() {
		return conum;
	}
	public void setConum(String conum) {
		this.conum = conum;
	}
	public String getPnum() {
		return pnum;
	}
	public void setPnum(String pnum) {
		this.pnum = pnum;
	}
	public String getMnum() {
		return mnum;
	}
	public void setMnum(String mnum) {
		this.mnum = mnum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCocontent() {
		return cocontent;
	}
	public void setCocontent(String cocontent) {
		this.cocontent = cocontent;
	}
	public Date getCodate() {
		return codate;
	}
	public void setCodate(Date codate) {
		this.codate = codate;
	}
	@Override
	public String toString() {
		return "CommentVO [conum=" + conum + ", pnum=" + pnum + ", mnum=" + mnum + ", id=" + id + ", cocontent="
				+ cocontent + ", codate=" + codate + "]";
	}
	
	
}
