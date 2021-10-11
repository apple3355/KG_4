package bucket.kurly.admin.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import bucket.kurly.admin.board.service.Admin_Board_qnaService;
import bucket.kurly.admin.member.service.Admin_MemberService;
import bucket.kurly.admin.statistics.Admin_StatisticsVO;
import bucket.kurly.admin.statistics.service.Admin_StatisticsService;

@Controller
public class Admin_MainController {
	
	
	@Autowired
	private Admin_Board_qnaService Admin_Board_qnaService;
	@Autowired
	private Admin_MemberService Admin_MemberService;
	@Autowired
	Admin_StatisticsService Admin_StatisticsService;
	
	//메인화면
	@RequestMapping("/admin_main.mdo")
	public String admin_main(Model model) {
		int board_qnaList_answait = Admin_Board_qnaService.selectBoard_qna_answait_num();
		int member_num = Admin_MemberService.selectMember_num();
		int revenue_total = Admin_StatisticsService.getRevenue_total();
		
		List<Admin_StatisticsVO> memberList = Admin_StatisticsService.getMemberRank();
		model.addAttribute("board_qnaList_answait", board_qnaList_answait);
		model.addAttribute("member_num", member_num);
		model.addAttribute("revenue_total",revenue_total);
		model.addAttribute("Admin_StatisticsVO",memberList);
		return "admin_main";
	}
	
	//로그인화면
	@RequestMapping("/admin_login.mdo")
	public String admin_login() {
		return "manager/admin_login";
	}
	
}
