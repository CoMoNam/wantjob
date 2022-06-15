package com.web.vo;

public class EstimateVO {
	private String esnum;
	private String mnum;
	private String id;
	private String renum;
	private Character unit;
	private Integer escost;
	private String explan;
	
	public String getEsnum() {
		return esnum;
	}
	public void setEsnum(String esnum) {
		this.esnum = esnum;
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
	public String getRenum() {
		return renum;
	}
	public void setRenum(String renum) {
		this.renum = renum;
	}
	
	public Character getUnit() {
		return unit;
	}
	public void setUnit(Character unit) {
		this.unit = unit;
	}
	public Integer getEscost() {
		return escost;
	}
	public void setEscost(Integer escost) {
		this.escost = escost;
	}
	public String getExplan() {
		return explan;
	}
	public void setExplan(String explan) {
		this.explan = explan;
	}
	
	@Override
	public String toString(){
		return "EstimateVO [esnum=" +esnum+ ", mnum=" +mnum+ ", id=" +id+ ", renum="
				+renum+ ", unit=" +unit+ ", escost=" +escost+ ", explan=" +explan+ "]";
	}
	

}
