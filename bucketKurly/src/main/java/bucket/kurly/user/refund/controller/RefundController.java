package bucket.kurly.user.refund.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import bucket.kurly.user.refund.RefundVO;
import bucket.kurly.user.refund.service.RefundService;

@Controller
public class RefundController {

	@Autowired
	private RefundService refundService;
	
	@RequestMapping("/insert_refund.do")
	public String insert_refund(RefundVO vo, HttpServletRequest request, HttpSession session) throws Exception   {

		String refund_member_id = (String) session.getAttribute("id");		
		//session.setAttribute("id", refund_member_id); 
		vo.setRefund_member_id(refund_member_id);
		System.out.println("id: " + refund_member_id);
	
		String order_no = request.getParameter("order_no");
		vo.setRefund_order_no(order_no);
		System.out.println(order_no);
		
		String merchant_no = request.getParameter("merchant_no");
		vo.setRefund_merchant_no(merchant_no);
		System.out.println(merchant_no);
		
		String refund_price = request.getParameter("refund_price");
		vo.setRefund_price(Integer.parseInt(refund_price));
		System.out.println(refund_price);
		
		
		
		
		System.out.println("vo: "+ vo);
		
		refundService.insert_refund(vo);
		
	return "member/member_orderlist";
	
	}
	
	
}
