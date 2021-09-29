package bucket.kurly.admin.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import bucket.kurly.admin.board.service.Admin_Board_qnaService;


@Controller
public class Admin_Board_qnaController {
	
	@Autowired
	private Admin_Board_qnaService Admin_Board_qnaService;
	
	// 게시글 글 목록 요청
	@RequestMapping("/admin_board_qna.mdo")
	public String selectBoard_qna(Model model)throws Exception {
		System.out.println("[게시글 qna] - 글 목록 요청");
		
		//List<Admin_Board_qnaVO> board_qnaList = Admin_Board_qnaService.selectBoard_notice();	
		//model.addAttribute("board_qnaList", board_qnaList);
		
		return "board/admin_board_qna";
		
	}
	
}





