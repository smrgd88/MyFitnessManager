package com.mfm.board.model;

import java.util.Date;

public class BoardVO {
	
	private long bno;						//�۹�ȣ
	private String btitle;					//������
	private String bcontext;				//�۳���
	private String bwriter;					//���ۼ���
	private Date bdate;						//�۵����
	private int bgno;						//�۱׷��ȣ
	private int breadCount;					//��ȸ��
	
	
	
	public long getBno() {
		return bno;
	}
	public void setBno(long bno) {
		this.bno = bno;
	}
	public String getBtitle() {
		return btitle.replaceAll("(?!)<script", "&lt;script");  //  script �±� ��� ���� ;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontext() {
		
		return bcontext.replaceAll("(?!)<script", "&lt;script");  //  script �±� ��� ���� 
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


