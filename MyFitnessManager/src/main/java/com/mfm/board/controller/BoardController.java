package com.mfm.board.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mfm.board.model.BoardVO;
import com.mfm.board.model.Criteria;
import com.mfm.board.model.PageDTO;
import com.mfm.board.service.BoardService;


@Controller
@RequestMapping("/boards/*")
public class BoardController {
	
	@Inject
	private BoardService bService;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	
	
	@GetMapping("/list")
	public void list2(Criteria cri, Model model, @RequestParam("board_no") int bgno) {
		cri.setBgno(bgno);
		model.addAttribute("bgno",bgno);
		model.addAttribute("board",bService.getList(bgno));
	}
	
	@GetMapping("/list/{page}")
	public ResponseEntity<PageDTO> list2(@PathVariable("page") int pageNum, @ModelAttribute("cri") Criteria cri){
		cri.setPageNum(pageNum);
		return new ResponseEntity<>(bService.getList(cri), HttpStatus.OK);
	}
	
	@GetMapping({"/get","/modify"})
	public void get(@RequestParam("bno")Long bno, @ModelAttribute("cri") Criteria cri, Model model) {
		model.addAttribute("board",bService.get(bno));	
	}
	
	@GetMapping("/register")
	public void register(@RequestParam("board_no") int bgno, Model model) {
		model.addAttribute("bgno",bgno);
		
	}
	
	@PostMapping("/register")//void 쓰면 맵핑 주소로 리턴함
	public String register(BoardVO vo, RedirectAttributes rttr) {
		bService.register(vo);
		rttr.addFlashAttribute("result",vo.getBno());
		return "redirect:/boards/list?board_no="+vo.getBgno();
	}
	
	@GetMapping("/remove")
	public String remove(Long bno, @ModelAttribute("cri") Criteria cri , RedirectAttributes rttr) {
		bService.remove(bno);
		rttr.addFlashAttribute("result","success");
		return "redirect:/boards/list?board_no="+cri.getBgno();
	}
	
}

