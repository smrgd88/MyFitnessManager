package com.mfm.board.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mfm.board.mapper.BoardMapper;
import com.mfm.board.model.BoardGroupVO;
import com.mfm.board.model.BoardVO;
import com.mfm.board.model.Criteria;
import com.mfm.board.model.PageDTO;

@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	private BoardMapper mapper;
	
	
	@Override
	public PageDTO getList(Criteria cri) {
		// TODO Auto-generated method stub
		return new PageDTO(mapper.count(cri),mapper.list(cri));
	}


	@Override
	public int count(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.count(cri);
	}


	@Override
	public BoardVO get(Long bno) {
		// TODO Auto-generated method stub
		return mapper.read(bno);
	}


	@Override
	public BoardGroupVO getList(int bgno) {
		// TODO Auto-generated method stub
		return mapper.grouplist(bgno);
	}


	@Override
	public void register(BoardVO board) {
		mapper.insertSelectKey(board);		
	}
	
	@Override
	public void remove(Long bno) {
		mapper.remove(bno);
	}

	

}
