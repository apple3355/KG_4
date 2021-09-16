package bucket.kurly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	//비로그인 메인화면
		@RequestMapping("/main.do")
		public String main() {
			return "main";
		}
		
		//로그인화면
		@RequestMapping("/login.do")
		public String login() {
			return "login";
		}
		
		//아이디 찾기화면
		@RequestMapping("/find_ID.do")
		public String find_ID() {
			return "find_ID";
		}
		
		//비밀번호 찾기화면
		@RequestMapping("/find_pwd.do")
		public String find_pwd() {
			return "find_pwd";
			
		}
		
		//회원가입 화면
		@RequestMapping("/join.do")
		public String join() {
			return "join";
		}
		
		//회원 상세정보화면
		@RequestMapping("/memberinfo.do")
		public String memberinfo() {
			return "memberinfo";
		}
		
		//회원 메인화면
		@RequestMapping("/member_main.do")
		public String member_main() {
			return "member_main";
		}
		
		//회원 메인화면
		@RequestMapping("/notFind_ID.do")
		public String notFind_ID() {
			return "notFind_ID";
		}
		
		//회원 메인화면
		@RequestMapping("/show_ID.do")
		public String show_ID() {
			return "show_ID";
		}
		
		//상품 상세화면
		@RequestMapping("/product.do")
		public String product() {
			return "product";
		}
	
	//��������
	@RequestMapping("/notice.do")
	public String notice() {
		return "notice";
	}
	
	//�������� �Խñ� �󼼺���
	@RequestMapping("/notice_no.do")
	public String notice_no() {
		return "notice_no";
	}
}
