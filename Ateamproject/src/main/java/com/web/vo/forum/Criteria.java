package com.web.vo.forum;


public class Criteria {
	private int pageNum; //?˜„?¬ ?˜?´ì§?
	private int amount; // ?•œ ?˜?´ì§? ?‹¹ ê²Œì‹œë¬? ?ˆ˜ 
	public Criteria() {
		this(1,10); // ê¸°ë³¸ ?„¸?Œ… -> pageNum=1, amount =10
	}
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount; //ê¸°ë³¸ ?ƒ?„±?
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

	private int startPage; //?‹œ?‘ ?˜?´ì§?
	private int endPage; //? ?˜?´ì§?
	private boolean prev, next; // ?´? „, ?‹¤?Œ ?˜?´ì§?
	private int total; // ì´? ê²Œì‹œë¬? ?ˆ˜
	private Criteria cri; // ?˜„?¬ ?˜?´ì§?, ?˜?´ì§??‹¹ ê²Œì‹œë¬? ?‘œ?‹œ ?ˆ˜ ? •ë³?
	
	public Criteria(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
		this.pageNum = cri.pageNum;
		this.amount = cri.amount;
				
		
		
		
		this.endPage = (int)(Math.ceil(cri.getPageNum()/10.0)) *10; //ë§ˆì?ë§? ?˜?´ì§?
		this.startPage = this.endPage -9; //?‹œ?‘ ?˜?´ì§?
		
		int realEnd = (int)(Math.ceil(total * 1.0/ cri.getAmount())); //? „ì²? ë§ˆì?ë§? ?˜?´ì§?
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd; //? „ì²? ë§ˆì?ë§? ?˜?´ì§?ê°? ?™”ë©´ì— ë³´ì´?Š” ë§ˆì?ë§? ?˜?´ì§?ë³´ë‹¤ ?‘?? ê²½ìš°,ë³´ì´?Š” ?˜?´ì§? ê°? ì¡°ì •?•˜?Š” ê°?
		}
		
		this.prev = this.startPage >1; //?‹œ?‘ ?˜?´ì§?ê°? 1ë³´ë‹¤ ?° ê²½ìš° true
		this.next = this.endPage < realEnd; // ë§ˆì?ë§? ?˜?´ì§?ê°? ?° ê²¨ìš° true
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