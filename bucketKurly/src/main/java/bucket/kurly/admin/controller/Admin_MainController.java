package bucket.kurly.admin.controller;


import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import bucket.kurly.admin.board.service.Admin_Board_qnaService;
import bucket.kurly.admin.member.service.Admin_MemberService;
import bucket.kurly.admin.statistics.Admin_StatisticsBestVO;
import bucket.kurly.admin.statistics.Admin_StatisticsVO;
import bucket.kurly.admin.statistics.controller.Admin_StatisticsController;
import bucket.kurly.admin.statistics.service.Admin_StatisticsService;

@Controller
public class Admin_MainController {
	
	
	@Autowired
	private Admin_Board_qnaService Admin_Board_qnaService;
	@Autowired
	private Admin_MemberService Admin_MemberService;
	@Autowired
	Admin_StatisticsService Admin_StatisticsService;
	
	DecimalFormat df = new DecimalFormat("###,###");
	SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
	
	//메인화면
	@RequestMapping("/admin_main.mdo")
	public String admin_main(Model model) throws ParseException {
		
		//게시글 답변 대기수
		int board_qnaList_answait = Admin_Board_qnaService.selectBoard_qna_answait_num();
		model.addAttribute("board_qnaList_answait", board_qnaList_answait);
		
		//현재 총 회원 수
		int member_num = Admin_MemberService.selectMember_num();
		model.addAttribute("member_num", member_num);
		
		//전체 매출 합계
		int revenue_total_without_format = Admin_StatisticsService.getRevenue_total();
		String revenue_total = df.format(revenue_total_without_format);
		model.addAttribute("revenue_total",revenue_total);
		
		//등급별 회원 수
		List<Admin_StatisticsVO> memberList = Admin_StatisticsService.getMemberRank();
		model.addAttribute("Admin_StatisticsVO",memberList);
		
		//베스트 상품
		List<Admin_StatisticsBestVO> itemList = Admin_StatisticsService.getBestItem();
		model.addAttribute("Admin_StatisticsBestVO", itemList);
		
		//일별, 월별 매출 그래프
		Admin_StatisticsVO vo_daily = new Admin_StatisticsVO();
		vo_daily.setStartdate_daily(fm.parse("2021-10-01"));
		vo_daily.setEnddate_daily(fm.parse("2021-10-31"));
		
		Admin_StatisticsVO vo_monthly = new Admin_StatisticsVO();
		vo_monthly.setStartdate_monthly(fm.parse("2021-01-01"));
		vo_monthly.setEnddate_monthly(fm.parse("2021-12-31"));
		
		List<Admin_StatisticsVO> dailyList = Admin_StatisticsService.getRevenue_daily(vo_daily);
		List<Admin_StatisticsVO> monthlyList = Admin_StatisticsService.getRevenue_monthly(vo_monthly);
		
		String json_label_daily = getjson_label(dailyList);
		String json_data_daily = getjson_data(dailyList);
		String json_label_monthly = getjson_label(monthlyList);
		String json_data_monthly= getjson_data(monthlyList);
		
		model.addAttribute("dailyList_json_label",json_label_daily);
		model.addAttribute("dailyList_json_data",json_data_daily);
		model.addAttribute("monthlyList_json_label",json_label_monthly);
		model.addAttribute("monthlyList_json_data",json_data_monthly);

		return "admin_main";
	}
	
	//로그인화면
	@RequestMapping("/admin_login.mdo")
	public String admin_login() {
		return "manager/admin_login";
	}

	public String getjson_label(List<Admin_StatisticsVO> list) {
		String json_label = "[";
		for (int i = 0; i < list.size(); i++) {
			Admin_StatisticsVO vo = (Admin_StatisticsVO) list.get(i);
			String date1 = vo.getOrder_date();
			json_label += "\"" + date1 + "\"";
			if (i != list.size() - 1) {
				json_label += ",";
			}
		}
		json_label += "]";
		return json_label;
	}
	public String getjson_data(List<Admin_StatisticsVO> list) {
		String json_data = "[";
		for (int i = 0; i < list.size(); i++) {
			Admin_StatisticsVO vo = (Admin_StatisticsVO) list.get(i);
			int price = vo.getRevenue_total();
			json_data += "\"" + price + "\"";
			if (i != list.size() - 1) {
				json_data += ",";
			}
		}
		json_data += "]";
		return json_data;
	}
}
