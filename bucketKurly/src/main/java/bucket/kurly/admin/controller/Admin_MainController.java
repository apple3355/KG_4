package bucket.kurly.admin.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import bucket.kurly.admin.board.service.Admin_Board_qnaService;
import bucket.kurly.admin.member.service.Admin_MemberService;

@Controller
public class Admin_MainController {
	
	
	@Autowired
	private Admin_Board_qnaService Admin_Board_qnaService;
	@Autowired
	private Admin_MemberService Admin_MemberService;

	//메인화면
	@RequestMapping("/admin_main.mdo")
	public String admin_main(Model model) {
		int board_qnaList_answait = Admin_Board_qnaService.selectBoard_qna_answait_num();
		int member_num = Admin_MemberService.selectMember_num();
		model.addAttribute("board_qnaList_answait", board_qnaList_answait);
		model.addAttribute("member_num", member_num);
		
		return "admin_main";
	}
	
	//로그인화면
	@RequestMapping("/admin_login.mdo")
	public String admin_login() {
		return "manager/admin_login";
	}
	
}
