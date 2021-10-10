package bucket.kurly.user.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bucket.kurly.user.board.Board_faqVO;
import bucket.kurly.util.Pagination;
import bucket.kurly.user.board.service.Board_faqService;

@Controller
public class Board_faqController {

	@Autowired
	private Board_faqService board_faqService;
	
	// 자주하는 질문 목록 요청
	@RequestMapping("/board_faq.do")
	public String board_faq(Model model,
			@RequestParam(required = false, defaultValue = "1") int page, 
			@RequestParam(required = false, defaultValue = "1") int range) 
			throws Exception {
		
		System.out.println("[게시판faq]글 목록 요청");
		
		int listCnt = board_faqService.selectBoard_faqListCnt(); //전체 게시글 개수
		Pagination pagination = new Pagination(); //Pagination 객체 생성
		pagination.pageInfo(page, range, listCnt);
		
		List<Board_faqVO> board_faqList = board_faqService.selectBoard_faq(pagination);	
		
		model.addAttribute("pagination", pagination);
		model.addAttribute("board_faqList", board_faqList);
		
		return "board/board_faq";
	}
	

	// 게시물 상세 페이지로 이동
	@RequestMapping("/board_faq_no.do")
	public String select_notice_no(Model model, 
			@RequestParam(required = true) int no ){ 
		
		Board_faqVO faqVo = board_faqService.selectBoard_faq_no(no); 
		model.addAttribute("faqVo", faqVo);
		
		return "board/board_faq_no";
	} 

}
