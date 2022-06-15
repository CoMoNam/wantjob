package com.web.vo;

import java.util.Date;

import org.springframework.stereotype.Repository;

@Repository
public class MemberVO {
	private String mnum;
	private String ID;
	private String password;
	private String name;
	private String hp;
	private String gender;
	private String conditions;
	private String useryn;
	private String gosuyn;
	private String adminyn;
	private String photo;
	private String memberexit;
	
	
	

	
	public String getMemberexit() {
		return memberexit;
	}





	public void setMemberexit(String memberexit) {
		this.memberexit = memberexit;
	}





	public String getMnum() {
		return mnum;
	}





	public void setMnum(String mnum) {
		this.mnum = mnum;
	}





	public String getID() {
		return ID;
	}





	public void setID(String iD) {
		ID = iD;
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





	public String getHp() {
		return hp;
	}





	public void setHp(String hp) {
		this.hp = hp;
	}





	public String getGender() {
		return gender;
	}





	public void setGender(String gender) {
		this.gender = gender;
	}





	public String getConditions() {
		return conditions;
	}





	public void setConditions(String conditions) {
		this.conditions = conditions;
	}





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





	public String getPhoto() {
		return photo;
	}





	public void setPhoto(String photo) {
		this.photo = photo;
	}





	@Override
	public String toString() {
		return "MemberVO [MNUM=" + mnum+", ID=" + ID + ", password=" + password + ", name=" + name + ", hp=" + hp + ", gender="
				+ gender + ", conditions=" + conditions + ", useryn=" + useryn + " , gosuyn=" + gosuyn + ", adminyn=" + adminyn + ", photo=" + photo +", memberexit=" + memberexit +  "]";
	}
	

}