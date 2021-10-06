package bucket.kurly.user.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Board_faqController {

	// 자주하는 질문 페이지
	@RequestMapping("/board_faq.do")
	public String board_faq() {
		return "board/board_faq";
	}

}
