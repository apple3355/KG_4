package bucket.kurly.user.order.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String order_form(Model model, HttpSession session, @RequestParam("chkItem") List<String> cart_no, @RequestParam(value = "member_address1", required=false) String member_address1) throws Exception {
		List<Goods_CartShowVO> goods_cartShowVO = new ArrayList<Goods_CartShowVO>();
		for(int i=0; i<cart_no.size(); i++) {
			goods_cartShowVO.addAll(goodsService.chooseGoods_cart(Integer.parseInt(cart_no.get(i))));
			model.addAttribute("goods_cartShowVO", goods_cartShowVO);
		}
		
		String name = (String) session.getAttribute("id");
		
		MemberVO result = orderService.order_form(name);
//		result.setMember_address1(member_address1);
	
		model.addAttribute("memberVO", result);
		
		
		return "order/order_form";
	}
	
	//주문서 페이지
	@RequestMapping("/order_form_detail.do")
	public String order_form_detail()   {
		  
		return "order/order_form_detail";
	}
	
}
