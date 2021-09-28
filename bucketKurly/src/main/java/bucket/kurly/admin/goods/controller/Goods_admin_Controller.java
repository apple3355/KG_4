package bucket.kurly.admin.goods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bucket.kurly.admin.board.Admin_Board_noticeVO;
import bucket.kurly.admin.goods.Goods_adminSellVO;
import bucket.kurly.admin.goods.service.Goods_adminService;
import bucket.kurly.user.board.Board_noticeVO;
import bucket.kurly.user.goods.Goods_SellVO;

@Controller
public class Goods_admin_Controller {

	@Autowired
	private Goods_adminService goods_adminService;

	// 판매 상품 리스트
	@RequestMapping("/admin_goods_list.mdo")
	public String getGoods_adminlist(Model model) {

		System.out.println("판매 DB 요청");
	
		List<Goods_adminSellVO> selectgoods_sell = goods_adminService.selectGoods_admin_list();

		model.addAttribute("selectgoods_sell", selectgoods_sell); // 상품DB품목
		return "goods/admin_goods_list";
	}
	
	//상품 등록 페이지
	@RequestMapping("/admin_goods_insertsell.mdo")
	public String admin_goods_insertsell(Model model){
		System.out.println("[상품 등록 페이지 요청]");
		return "goods/admin_goods_insertsell";
	} 
	
	//상품 등록 요청
	@RequestMapping("/admin_goods_insertsellDB.mdo")
	public String admin_goods_insertsellDB(Model model,Goods_adminSellVO vo){
		System.out.println("[상품 DB 등록 요청]");	
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
	
	
	
}
