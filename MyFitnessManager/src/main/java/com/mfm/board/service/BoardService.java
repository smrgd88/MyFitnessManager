package com.mfm.board.service;

import com.mfm.board.model.BoardGroupVO;
import com.mfm.board.model.BoardVO;
import com.mfm.board.model.Criteria;
import com.mfm.board.model.PageDTO;

public interface BoardService {
	
	public PageDTO getList(Criteria cri);
	
	public int count(Criteria cri);
	
	public BoardVO get(Long bno);
	
	public BoardGroupVO getList(int bgno);
	
	public void register(BoardVO board);

	public void remove(Long bno);

	
	

}
