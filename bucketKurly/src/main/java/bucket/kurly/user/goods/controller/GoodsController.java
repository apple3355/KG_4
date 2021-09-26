package bucket.kurly.user.goods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bucket.kurly.user.goods.GoodsVO;
import bucket.kurly.user.goods.Goods_CartVO;
import bucket.kurly.user.goods.Goods_SellVO;
import bucket.kurly.user.goods.service.GoodsService;

@Controller
public class GoodsController {

	@Autowired
	private GoodsService goodsService;

	// 상품 리스트, 상품 카운트, 페이징
	@RequestMapping("/goods_list.do")
	public String getGoods_list(Model model, @RequestParam("type") String select_type) {		
		System.out.println("상품 목록 요청");
		
		List<Goods_SellVO> goods_sell_list = goodsService.selectGoods_sell(select_type);
		System.out.println(goods_sell_list);
		
//		String itemCnt = goodsService.getGoods_cnt(); // 아이템 개수
//		Pagination pagination = new Pagination(); //Pagination 객체 생성
//		pagination.pageInfo(page, range, itemCnt);
		
		String A = null;
		if(select_type.equals("new")){
			A = "신상품순";
		}else {
			
		}

		
		model.addAttribute("goods_sell_list", goods_sell_list); // 상품DB품목
		model.addAttribute("itemCnt", goods_sell_list.size()); // 상품카운트
		model.addAttribute("select_type",A); // 상품카운트
//		model.addAttribute("pagination", pagination); //페이징
		return "goods/goods_list";
	}


	// 상품 상세페이지
	@RequestMapping("/goods_list_detail.do")
	public String getGoods_list_detail(Model model, @RequestParam("goods_sell_no") int goods_sell_no) {

		Goods_SellVO goods_sellVO = goodsService.getGoods_detail(goods_sell_no);
		model.addAttribute("goods_sellVO", goods_sellVO);
	
		return "goods/goods_list_detail";
	}
	
	
	//장바구니에 담기
	@RequestMapping("/insertGoods_cart.do")
	public String insertGoods_cart(Goods_CartVO gcvo) {
		
		goodsService.insertGoods_cart(gcvo);
		return "redirect:/goods_list_detail.do";
	}
	
	//장바구니 정보
	//장바구니 삭제
	
	
	
}
