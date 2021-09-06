package bucket.kurly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/main.do")
	public String main() {
		return "main";
	}
	
	@RequestMapping("login.do")
	public String login() {
		return "login";
	}
	
	//공지사항
	@RequestMapping("/notice.do")
	public String notice() {
		return "notice";
	}
	
	//공지사항 게시글 상세보기
	@RequestMapping("/notice_no.do")
	public String notice_no() {
		return "notice_no";
	}
}
