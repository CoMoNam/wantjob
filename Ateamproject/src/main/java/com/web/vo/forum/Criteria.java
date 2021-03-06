package com.web.vo.forum;


public class Criteria {
	private int pageNum; //??¬ ??΄μ§?
	private int amount; // ? ??΄μ§? ?Ή κ²μλ¬? ? 
	public Criteria() {
		this(1,10); // κΈ°λ³Έ ?Έ? -> pageNum=1, amount =10
	}
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount; //κΈ°λ³Έ ??±?
	}
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}

	private int startPage; //?? ??΄μ§?
	private int endPage; //? ??΄μ§?
	private boolean prev, next; // ?΄? , ?€? ??΄μ§?
	private int total; // μ΄? κ²μλ¬? ?
	private Criteria cri; // ??¬ ??΄μ§?, ??΄μ§??Ή κ²μλ¬? ?? ? ? λ³?
	
	public Criteria(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
		this.pageNum = cri.pageNum;
		this.amount = cri.amount;
				
		
		
		
		this.endPage = (int)(Math.ceil(cri.getPageNum()/10.0)) *10; //λ§μ?λ§? ??΄μ§?
		this.startPage = this.endPage -9; //?? ??΄μ§?
		
		int realEnd = (int)(Math.ceil(total * 1.0/ cri.getAmount())); //? μ²? λ§μ?λ§? ??΄μ§?
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd; //? μ²? λ§μ?λ§? ??΄μ§?κ°? ?λ©΄μ λ³΄μ΄? λ§μ?λ§? ??΄μ§?λ³΄λ€ ??? κ²½μ°,λ³΄μ΄? ??΄μ§? κ°? μ‘°μ ?? κ°?
		}
		
		this.prev = this.startPage >1; //?? ??΄μ§?κ°? 1λ³΄λ€ ?° κ²½μ° true
		this.next = this.endPage < realEnd; // λ§μ?λ§? ??΄μ§?κ°? ?° κ²¨μ° true
	}
	
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public Criteria getCri() {
		return cri;
	}
	public void setCri(Criteria cri) {
		this.cri = cri;
	}
	
	@Override
	public String toString() {
		return "Criteria [pageNum=" + pageNum + ", amount=" + amount + ", startPage=" + startPage + ", endPage="
				+ endPage + ", prev=" + prev + ", next=" + next + ", total=" + total + ", cri=" + cri + "]";
	}
	
}