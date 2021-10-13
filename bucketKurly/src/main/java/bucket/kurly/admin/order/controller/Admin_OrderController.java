package bucket.kurly.admin.order.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import bucket.kurly.admin.order.Admin_OrderVO;
import bucket.kurly.admin.order.service.Admin_OrderService;

@Controller
public class Admin_OrderController {
	
	@Autowired
	private Admin_OrderService Admin_OrderService;
	
	// 회원 목록 요청
	@RequestMapping("/admin_order.mdo")
	public String selectOrder(Model model) throws Exception {
		System.out.println("[주문 관리] - 주문 목록 요청");

		List<Admin_OrderVO> orderList = Admin_OrderService.selectOrder();	
		model.addAttribute("orderList", orderList);
		
		return "order/admin_order";
	}
	
	//상품 수정
	@RequestMapping("/admin_orderupdate.mdo")
	public String updateOrder(Model model,Admin_OrderVO vo){
		
		System.out.println("[주문 관리] - 상태 수정 요청");	
		System.out.println(vo.toString());
		
		Admin_OrderService.updateOrder(vo);	
		
		return "redirect:/admin_order.mdo";
	} 
		
}

	