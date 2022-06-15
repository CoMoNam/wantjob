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
	
	
	
	

	
	public String getMnum() {
		return mnum;
	}

	public void setMnum(String mnum) {
		this.mnum = mnum;
	}

	public String getID() {
		return ID;
	}

	public void setID(String ID) {
		this.ID = ID;
	}

	public String getpassword() {
		return password;
	}

	public void setpassword(String password) {
		this.password = password;
	}

	public String getname() {
		return name;
	}

	public void setname(String name) {
		this.name = name;
	}
	public String gethp() {
		return hp;
	}

	public void sethp(String hp) {
		this.hp = hp;
	}

	public String getgender() {
		return gender;
	}

	public void setgender(String gender) {
		this.gender = gender;
	}

	public String getconditions() {
		return conditions;
	}

	public void setconditions(String conditions) {
		this.conditions = conditions;
	}

	public String getuseryn() {
		return useryn;
	}

	public void setuseryn(String useryn) {
		this.useryn = useryn;
	}

	public String getgosuyn() {
		return gosuyn;
	}

	public void setgosuyn(String gosuyn) {
		this.gosuyn = gosuyn;
	}
	public String getuadminyn() {
		return adminyn;
	}

	public void setadminyn(String adminyn) {
		this.adminyn = adminyn;
	}
	
	public String getphoto() {
		return photo;
	}

	public void setphoto(String photo) {
		this.photo = photo;
	}
	@Override
	public String toString() {
		return "MemberVO [MNUM=" + mnum+", ID=" + ID + ", password=" + password + ", name=" + name + ", hp=" + hp + ", gender="
				+ gender + ", conditions=" + conditions + ", useryn=" + useryn + " , gosuyn=" + gosuyn + ", adminyn=" + adminyn + ", photo=" + photo + "]";
	}
	

}