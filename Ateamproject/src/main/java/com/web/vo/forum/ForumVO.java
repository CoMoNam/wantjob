package com.web.vo.forum;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class ForumVO {
	private String pnum;
	private String mnum;
	private String id;
	private String ptitle;
	private String pcontent;
	private Integer phits;
	private String pdate;
	private CommonsMultipartFile file;

	public CommonsMultipartFile getFile() {
		return file;
	}
	
	public void setFile(CommonsMultipartFile file) {
		this.file = file;
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
	public String getPtitle() {
		return ptitle;
	}
	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	public Integer getPhits() {
		return phits;
	}
	public void setPhits(Integer phits) {
		this.phits = phits;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	@Override
	public String toString() {
		return "ForumVO [pnum=" + pnum + ", mnum=" + mnum + ", id=" + id + ", ptitle=" + ptitle + ", pcontent="
				+ pcontent + ", phits=" + phits + ", pdate=" + pdate + "]";
	}
	
	
 
	
	
	
	
}
