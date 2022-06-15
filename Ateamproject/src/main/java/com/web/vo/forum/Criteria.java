package com.web.vo.forum;


public class Criteria {
	private int pageNum; //?��?�� ?��?���?
	private int amount; // ?�� ?��?���? ?�� 게시�? ?�� 
	public Criteria() {
		this(1,10); // 기본 ?��?�� -> pageNum=1, amount =10
	}
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount; //기본 ?��?��?��
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

	private int startPage; //?��?�� ?��?���?
	private int endPage; //?�� ?��?���?
	private boolean prev, next; // ?��?��, ?��?�� ?��?���?
	private int total; // �? 게시�? ?��
	private Criteria cri; // ?��?�� ?��?���?, ?��?���??�� 게시�? ?��?�� ?�� ?���?
	
	public Criteria(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
		this.pageNum = cri.pageNum;
		this.amount = cri.amount;
				
		
		
		
		this.endPage = (int)(Math.ceil(cri.getPageNum()/10.0)) *10; //마�?�? ?��?���?
		this.startPage = this.endPage -9; //?��?�� ?��?���?
		
		int realEnd = (int)(Math.ceil(total * 1.0/ cri.getAmount())); //?���? 마�?�? ?��?���?
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd; //?���? 마�?�? ?��?���?�? ?��면에 보이?�� 마�?�? ?��?���?보다 ?��?? 경우,보이?�� ?��?���? �? 조정?��?�� �?
		}
		
		this.prev = this.startPage >1; //?��?�� ?��?���?�? 1보다 ?�� 경우 true
		this.next = this.endPage < realEnd; // 마�?�? ?��?���?�? ?�� 겨우 true
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