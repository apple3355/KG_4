package bucket.kurly.user.order.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bucket.kurly.user.goods.Goods_CartShowVO;
import bucket.kurly.user.goods.service.GoodsService;
import bucket.kurly.user.member.MemberVO;
import bucket.kurly.user.service.OrderService;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private GoodsService goodsService;
	
	//주문서 jsp
	@RequestMapping("/order_form.do")
	public String order_form(Model model, HttpSession session, @RequestParam("member_address1") String member_address1, @RequestParam("member_address2") String member_address2) throws Exception {
	
		List<Goods_CartShowVO> goods_cartShowVO = goodsService.getGoods_cart((int)session.getAttribute("member_no"));
		String name = (String) session.getAttribute("id");
		
		MemberVO result = orderService.order_form(name);
		result.setMember_address1(member_address1);
		result.setMember_address2(member_address2);
	
		model.addAttribute("goods_cartShowVO", goods_cartShowVO);
		model.addAttribute("memberVO", result);
		
		
		return "order/order_form";
	}
	
	//주문서 페이지
	@RequestMapping("/order_form_detail.do")
	public String order_form_detail()   {
		  
		return "order/order_form_detail";
	}
	
}
