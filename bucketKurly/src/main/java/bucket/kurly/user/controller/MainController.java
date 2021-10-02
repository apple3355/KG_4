package bucket.kurly.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import bucket.kurly.admin.marketing.BannerVO;
import bucket.kurly.admin.marketing.service.MarketingService;

@Controller
public class MainController {

	@Autowired
	private MarketingService marketingService;
	
		//메인화면
		@RequestMapping("/main.do")
		public String main(Model model, BannerVO vo) {
			
			model.addAttribute("banner", marketingService.getBannerListView(vo));
			
			return "main";
		}
		
		
		//로그인화면
		@RequestMapping("/login.do")
		public String login() {
			return "login/login";
		}
		
		//아이디 찾기화면
		@RequestMapping("/find_ID.do")
		public String find_ID() {
			return "login/login_find_ID";
		}
		
		//비밀번호 찾기화면
		@RequestMapping("/find_pwd.do")
		public String find_pwd() {
			return "login/login_find_pwd";
			
		}
		
		//회원가입 화면
		@RequestMapping("/join.do")
		public String join() {
			return "member/join";
		}
		
		
		//회원 메인화면
		@RequestMapping("/notFind_ID.do")
		public String notFind_ID() {
			return "login/login_notFind_ID";
		}
		
		//회원 메인화면
		@RequestMapping("/show_ID.do")
		public String show_ID() {
			return "login/login_show_ID";
		}
		
		//상품 상세화면
		@RequestMapping("/goods_cart.do")
		public String goods_cart() {
			return "goods/goods_cart";
		}
}
