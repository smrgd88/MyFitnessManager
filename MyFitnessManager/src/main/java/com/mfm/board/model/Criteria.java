package com.mfm.board.model;

public class Criteria {
	
	private int pageNum=1;
	private int amount=5;
	private String type;
	private String keyword;
	private String[] typeArr;
	private int bgno;
	
	public int getBgno() {
		return bgno;
	}
	public void setBgno(int bgno) {
		this.bgno = bgno;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String[] getTypeArr() {
		return type==null?new String[] {}:type.split("");
	}
	public void setTypeArr(String[] typeArr) {
		this.typeArr = typeArr;
	}
	
	public Criteria() {
		this(1,5);
	}
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
}
