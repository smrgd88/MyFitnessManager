package com.mfm.board.model;

import java.util.List;

import org.springframework.stereotype.Repository;

public class PageDTO {

	private int cnt;
	private List<BoardVO> list;
	
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public List<BoardVO> getList() {
		return list;
	}
	public void setList(List<BoardVO> list) {
		this.list = list;
	}

	public PageDTO(int cnt, List<BoardVO> list) {
		this.cnt = cnt;
		this.list = list;
	}
	
}
