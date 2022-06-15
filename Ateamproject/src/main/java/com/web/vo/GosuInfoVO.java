package com.web.vo;

public class GosuInfoVO {
	private String mnum;
	private String id;
	private String anum;
	private String bnum;
	private String cnum;
	private String area;
	private Character onlineyn;
	private Character offlineyn;
	private String career;
	private String introduce;
	private String potime;
	private Integer reviewnum;
	private Integer matchnum;
	private Integer avescore;
	
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
	public String getAnum() {
		return anum;
	}
	public void setAnum(String anum) {
		this.anum = anum;
	}
	public String getBnum() {
		return bnum;
	}
	public void setBnum(String bnum) {
		this.bnum = bnum;
	}
	public String getCnum() {
		return cnum;
	}
	public void setCnum(String cnum) {
		this.cnum = cnum;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public Character getOnlineyn() {
		return onlineyn;
	}
	public void setOnlineyn(Character onlineyn) {
		this.onlineyn = onlineyn;
	}
	public Character getOfflineyn() {
		return offlineyn;
	}
	public void setOfflineyn(Character offlineyn) {
		this.offlineyn = offlineyn;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getPotime() {
		return potime;
	}
	public void setPotime(String potime) {
		this.potime = potime;
	}
	public Integer getReviewnum() {
		return reviewnum;
	}
	public void setReviewnum(Integer reviewnum) {
		this.reviewnum = reviewnum;
	}
	public Integer getMatchnum() {
		return matchnum;
	}
	public void setMatchnum(Integer matchnum) {
		this.matchnum = matchnum;
	}
	public Integer getAvescore() {
		return avescore;
	}
	public void setAvescore(Integer avescore) {
		this.avescore = avescore;
	}
	

	
	@Override
	public String toString(){
		return "GosuInfoVO [mnum=" +mnum+ ", id=" +id+ ", anum="
				+anum+ ", bnum=" +bnum+ ", cnum=" +cnum+ ", area=" +area+ ", onlineyn=" +onlineyn+ ", offlineyn=" +offlineyn+", career=" +career+ ", introduce=" +introduce+
				 ", potime=" +potime+  ", reviewnum=" +reviewnum+  ", matchnum=" +matchnum+  ", avescore=" +avescore+"]";
	}
	
}
