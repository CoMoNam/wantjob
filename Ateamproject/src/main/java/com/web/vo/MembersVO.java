package com.web.vo;

public class MembersVO {

	private String mnum;
	private String id;
	private String password;
	private String name;
	private String gender;
	private String hp;
	private Integer condition;
	private String useryn;
	private String gosuyn;
	private String adminyn;
	public String getUseryn() {
		return useryn;
	}
	public void setUseryn(String useryn) {
		this.useryn = useryn;
	}
	public String getGosuyn() {
		return gosuyn;
	}
	public void setGosuyn(String gosuyn) {
		this.gosuyn = gosuyn;
	}
	public String getAdminyn() {
		return adminyn;
	}
	public void setAdminyn(String adminyn) {
		this.adminyn = adminyn;
	}

	private String photo;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public Integer getCondition() {
		return condition;
	}
	public void setCondition(Integer condition) {
		this.condition = condition;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	@Override
	public String toString() {
		return "MembersVO [mnum=" +mnum+ ", id=" +id+ ", password=" +password+ ", name=" +name+
				", hp=" +hp+ ", gender=" +gender+ ", condition=" +condition+ ", useryn=" +useryn+ ", gosuyn=" +gosuyn+ ", adminyn=" +adminyn+  ", photo=" +photo+ "]";  
	}

}
