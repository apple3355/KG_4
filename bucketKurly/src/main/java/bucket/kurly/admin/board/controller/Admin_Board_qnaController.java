package bucket.kurly.admin.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bucket.kurly.admin.board.service.Admin_Board_qnaService;
import bucket.kurly.admin.board.Admin_Board_noticeVO;
import bucket.kurly.admin.board.Admin_Board_qnaVO;

@Controller
public class Admin_Board_qnaController {
	
	@Autowired
	private Admin_Board_qnaService Admin_Board_qnaService;
	
	// 게시글 글 목록 요청
	@RequestMapping("/admin_board_qna.mdo")
	public String select_qna(Model model)throws Exception {
		System.out.println("[게시글 qna] - 글 목록 요청");
		
		List<Admin_Board_qnaVO> board_qnaList_answait = Admin_Board_qnaService.selectBoard_qna_answait();
		List<Admin_Board_qnaVO> board_qnaList_anscom = Admin_Board_qnaService.selectBoard_qna_anscom();	
		
		model.addAttribute("board_qnaList_answait", board_qnaList_answait);
		model.addAttribute("board_qnaList_anscom", board_qnaList_anscom);
		
		return "board/admin_board_qna";
	}
	

	// 게시글 답변완료 상세 페이지로 이동
	@RequestMapping("/admin_board_qna_anscom.mdo")
	public String select_qna_no(Model model,@RequestParam("qna_no") int qna_no ){ 
		System.out.println("[게시글 qna] - 글 답변완료 상세페이지 요청");
		
		Admin_Board_qnaVO vo_question = Admin_Board_qnaService.selectBoard_qna_no(qna_no); 
		Admin_Board_qnaVO vo_answer = Admin_Board_qnaService.selectBoard_qna_no_answer(qna_no); 
		model.addAttribute("vo_question",vo_question);
		model.addAttribute("vo_answer",vo_answer);
		
		return "board/admin_board_qna_anscom";
	} 
	
	// 게시글 답변대기 상세 페이지로 이동
	@RequestMapping("/admin_board_qna_answait.mdo")
	public String insert_qna(Model model,@RequestParam("qna_no") int qna_no){ 
		System.out.println("[게시글 qna] - 글 답변대기 상세페이지 요청");
		
		Admin_Board_qnaVO vo_question = Admin_Board_qnaService.selectBoard_qna_no(qna_no); 
		model.addAttribute("vo_question",vo_question);
		
		return "board/admin_board_qna_answait";
	} 
	
	// 게시글 답변 추가
	@RequestMapping("/admin_board_qna_answer_insertDB.mdo")
	public String insert_qna_answerDB(Model model, Admin_Board_qnaVO vo){ 
		System.out.println("[게시글 qna] - 글 답변추가 요청");
		
		vo.setBoard_qna_member_no(9999);
		vo.setBoard_qna_writer("bucketkurly");
		Admin_Board_qnaService.insertBoard_qna_answer(vo); 
				
		return "redirect:/admin_board_qna.mdo";
	} 
	
	
	
}





