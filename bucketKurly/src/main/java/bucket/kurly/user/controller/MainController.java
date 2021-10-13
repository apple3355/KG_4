package bucket.kurly.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import bucket.kurly.admin.marketing.BannerVO;
import bucket.kurly.admin.marketing.service.MarketingService;
import bucket.kurly.user.goods.Goods_SellVO;
import bucket.kurly.user.goods.service.GoodsService;

@Controller
public class MainController {

	@Autowired
	private MarketingService marketingService;
	@Autowired
	private GoodsService goodsService;

	// 메인화면
	@RequestMapping("/main.do")
	public String main(Model model, BannerVO vo) {

		List<Goods_SellVO> goods_sell_list1 = goodsService.selectGoods_sell_main("random");
		List<Goods_SellVO> goods_sell_list2 = goodsService.selectGoods_sell_main("sale");
		List<Goods_SellVO> goods_sell_list3 = goodsService.selectGoods_sell_main("new");
		
		model.addAttribute("banner", marketingService.getBannerListView(vo));
		
		model.addAttribute("goods_sell_list1", goods_sell_list1);
		model.addAttribute("goods_sell_list2", goods_sell_list2);
		model.addAttribute("goods_sell_list3", goods_sell_list3);
		return "main";
	}

	// 로그인화면
	@RequestMapping("/login.do")
	public String login() {
		return "login/login";
	}

	// 아이디 찾기화면
	@RequestMapping("/find_ID.do")
	public String find_ID() {
		return "login/login_find_ID";
	}

	// 비밀번호 찾기화면
	@RequestMapping("/find_pwd.do")
	public String find_pwd() {
		return "login/login_find_pwd";

	}

	// 회원가입 화면
	@RequestMapping("/join.do")
	public String join() {
		return "member/join";
	}

	// 회원 메인화면
	@RequestMapping("/notFind_ID.do")
	public String notFind_ID() {
		return "login/login_notFind_ID";
	}

	// 회원 메인화면
	@RequestMapping("/show_ID.do")
	public String show_ID() {
		return "login/login_show_ID";
	}

	// 상품 상세화면
	@RequestMapping("/goods_cart.do")
	public String goods_cart() {
		return "goods/goods_cart";
	}

	// 특가/혜택화면
	@RequestMapping("/special_benefit.do")
	public String benefit_special(Model model, BannerVO vo) {
		
		model.addAttribute("banner", marketingService.getBannerListView(vo));
		
		return "goods/special_benefit";
	}
	

	// 상품 상세화면
	@RequestMapping("/member_membership.do")
	public String member_membership() {
		return "member/member_membership";
	}



}
