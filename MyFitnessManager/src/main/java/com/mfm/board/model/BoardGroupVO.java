package com.mfm.board.model;

public class BoardGroupVO {
	
	private int bgno;
	private int bgparent;
	private String bgname;
	private String bgdeleteflag;
	private String bgused;
	private String bgreply;
	private String bgreadonly;
	
	public int getBgno() {
		return bgno;
	}
	public void setBgno(int bgno) {
		this.bgno = bgno;
	}
	public int getBgparent() {
		return bgparent;
	}
	public void setBgparent(int bgparent) {
		this.bgparent = bgparent;
	}
	public String getBgname() {
		return bgname;
	}
	public void setBgname(String bgname) {
		this.bgname = bgname;
	}
	public String getBgdeleteflag() {
		return bgdeleteflag;
	}
	public void setBgdeleteflag(String bgdeleteflag) {
		this.bgdeleteflag = bgdeleteflag;
	}
	public String getBgused() {
		return bgused;
	}
	public void setBgused(String bgused) {
		this.bgused = bgused;
	}
	public String getBgreply() {
		return bgreply;
	}
	public void setBgreply(String bgreply) {
		this.bgreply = bgreply;
	}
	public String getBgreadonly() {
		return bgreadonly;
	}
	public void setBgreadonly(String bgreadonly) {
		this.bgreadonly = bgreadonly;
	}	
	

}
