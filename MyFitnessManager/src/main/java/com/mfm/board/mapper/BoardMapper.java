package com.mfm.board.mapper;

import java.util.List;

import com.mfm.board.model.BoardGroupVO;
import com.mfm.board.model.BoardVO;
import com.mfm.board.model.Criteria;

public interface BoardMapper {
	
	public List<BoardVO> list(Criteria cri);
	
	public int count(Criteria cri);

	public BoardVO read(Long bno);
	
	public BoardGroupVO grouplist(int bgno);
	
	public Integer insertSelectKey(BoardVO board);
	
	public void remove(Long bno);


}
