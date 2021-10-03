package bucket.kurly.user.order.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import bucket.kurly.user.member.MemberVO;
import bucket.kurly.user.service.OrderService;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService; 
	
	//주문서 jsp
	@RequestMapping("/order_form.do")
	public String order_form(Model model, HttpSession session) throws Exception {
	
//		String name = (String) session.getAttribute("id");
//		
//		MemberVO result = orderService.order_form(name);
//		
//		System.out.println(result);
//		
//		model.addAttribute("name", result.getMember_name());
//		model.addAttribute("phone", result.getMember_phone());
//		model.addAttribute("email", result.getMember_email());
	
		
		return "order/order_form";
	}
	
	//주문서 페이지
	@RequestMapping("/order_form_detail.do")
	public String order_form_detail()   {
		  
		return "order/order_form_detail";
	}
	
}
