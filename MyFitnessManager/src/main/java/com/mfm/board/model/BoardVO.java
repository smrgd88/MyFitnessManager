package com.mfm.board.model;

import java.util.Date;

public class BoardVO {
	
	private long bno;						//글번호
	private String btitle;					//글제목
	private String bcontext;				//글내용
	private String bwriter;					//글작성자
	private Date bdate;						//글등록일
	private int bgno;						//글그룹번호
	private int breadCount;					//조회수
	
	
	
	public long getBno() {
		return bno;
	}
	public void setBno(long bno) {
		this.bno = bno;
	}
	public String getBtitle() {
		return btitle.replaceAll("(?!)<script", "&lt;script");  //  script 태그 사용 금지 ;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontext() {
		
		return bcontext.replaceAll("(?!)<script", "&lt;script");  //  script 태그 사용 금지 
	}
	public void setBcontext(String bcontext) {
		this.bcontext = bcontext;
	}
	public String getBwriter() {
		return bwriter;
	}
	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	public int getBgno() {
		return bgno;
	}
	public void setBgno(int bgno) {
		this.bgno = bgno;
	}
	
	public int getBreadCount() {
		return breadCount;
	}
	public void setBreadCount(int breadCount) {
		this.breadCount = breadCount;
	}
	
	
}


