package bucket.kurly.admin.goods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bucket.kurly.admin.goods.Admin_RefundVO;
import bucket.kurly.admin.goods.Goods_adminSellVO;
import bucket.kurly.admin.goods.service.Admin_RefundService;
import bucket.kurly.admin.goods.service.Goods_adminService;
import bucket.kurly.util.ImportPayment;

@Controller
public class Goods_admin_Controller {

	@Autowired
	private Goods_adminService goods_adminService;
	
	@Autowired
	private Admin_RefundService admin_refundService;

	// 판매 상품 리스트
	@RequestMapping("/admin_goods_list.mdo")
	public String getGoods_adminlist(Model model) {

		System.out.println("판매 DB 요청");
	
		List<Goods_adminSellVO> selectgoods_sell = goods_adminService.selectGoods_admin_list();

		model.addAttribute("selectgoods_sell", selectgoods_sell); // 상품DB품목
		return "goods/admin_goods_list";
	}
	 
	
	//상품 등록 요청
	@RequestMapping("/admin_goods_insertsellDB.mdo")
	public String admin_goods_insertsellDB(Model model,Goods_adminSellVO vo){
		System.out.println("[상품 DB 등록 요청]");
		
		vo.setGoods_sell_stock_ea(vo.getGoods_sell_in_ea());
		System.out.println(vo.toString());
		System.out.println(vo.getGoods_sell_status());
		
		goods_adminService.insertGoods(vo);		
		
		return "redirect:/admin_goods_list.mdo";
	} 
	
			
	//상품 수정
	@RequestMapping("/admin_goodsupdate.mdo")
	public String update_goods(Model model,Goods_adminSellVO vo){
		
		System.out.println("[상품 리스트 수정 요청]");	
		System.out.println(vo.toString());
		
		goods_adminService.updateGoods(vo);	
		
		return "redirect:/admin_goods_list.mdo";
	} 
	
	//상품 삭제
	@RequestMapping("/deleteGoods_DB.mdo")
	public String deleteGoods_DB(Model model,@RequestParam("goods_sell_no") int goods_sell_no){ 
		
		System.out.println("상품 리스트 삭제");
		goods_adminService.deleteGoods(goods_sell_no);
		
		return "redirect:/admin_goods_list.mdo"; //redirect: URL을 재요청
		
	}
	
	
	// 환불 리스트 요청
	@RequestMapping("/admin_refund.mdo")
	public String getRefund_list(Model model) {

		System.out.println("환불 리스트 요청");
	
		List<Admin_RefundVO> selectRefund = admin_refundService.selectRefund_list();
		model.addAttribute("selectRefund", selectRefund);
		
		return "goods/admin_refund";
	}
	
	// 환불 요청
	@RequestMapping("/admin_refund_import.mdo")
	public String getRefund(Model model,
			@RequestParam("refund_no") int refund_no,
			@RequestParam("refund_order_no") String refund_order_no,
			@RequestParam("refund_merchant_no") String refund_merchant_no) {
		System.out.println("환불 요청");
		
		new ImportPayment().cancelPayment(new ImportPayment().getImportToken(),refund_merchant_no);
		
		admin_refundService.updateRefund_state(refund_no);
		admin_refundService.updateGoods_sell_stock_plus(refund_order_no);
		
		List<Admin_RefundVO> selectRefund = admin_refundService.selectRefund_list();
		model.addAttribute("selectRefund", selectRefund);
		
		return "goods/admin_refund";
	}

}
