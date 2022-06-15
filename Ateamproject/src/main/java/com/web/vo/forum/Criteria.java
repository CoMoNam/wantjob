package com.web.vo.forum;


public class Criteria {
	private int pageNum; //현재 페이지
	private int amount; // 한 페이지 당 게시물 수 
	public Criteria() {
		this(1,10); // 기본 세팅 -> pageNum=1, amount =10
	}
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount; //기본 생성자
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

	private int startPage; //시작 페이지
	private int endPage; //끝 페이지
	private boolean prev, next; // 이전, 다음 페이지
	private int total; // 총 게시물 수
	private Criteria cri; // 현재 페이지, 페이지당 게시물 표시 수 정보
	
	public Criteria(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
		this.pageNum = cri.pageNum;
		this.amount = cri.amount;
				
		
		
		
		this.endPage = (int)(Math.ceil(cri.getPageNum()/10.0)) *10; //마지막 페이지
		this.startPage = this.endPage -9; //시작 페이지
		
		int realEnd = (int)(Math.ceil(total * 1.0/ cri.getAmount())); //전체 마지막 페이지
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd; //전체 마지막 페이지가 화면에 보이는 마지막 페이지보다 작은 경우,보이는 페이지 값 조정하는 값
		}
		
		this.prev = this.startPage >1; //시작 페이지가 1보다 큰 경우 true
		this.next = this.endPage < realEnd; // 마지막 페이지가 큰 겨우 true
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