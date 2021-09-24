package bucket.kurly.user.goods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import bucket.kurly.user.goods.GoodsVO;
import bucket.kurly.user.goods.Goods_SellVO;
import bucket.kurly.user.goods.service.GoodsService;

@Controller
public class GoodsController {

	@Autowired
	private GoodsService goodsService;

	// 상품 리스트, 상품 카운트, 페이징
	@GetMapping("/goods_list.do")
	public String getGoods_list(Model model) {
//		@RequestParam(required = false, defaultValue = "1") int page,
//		@RequestParam(required = false, defaultValue = "1") int range) throws Exception {		

		List<GoodsVO> selectgoods_list = goodsService.selectGoods_list();

		String itemCnt = goodsService.getGoods_cnt(); // 아이템 개수
//		Pagination pagination = new Pagination(); //Pagination 객체 생성
//		pagination.pageInfo(page, range, itemCnt);

		System.out.println("상품 목록 요청");

		model.addAttribute("selectgoods_list", selectgoods_list); // 상품DB품목
		model.addAttribute("itemCnt", itemCnt); // 상품카운트
//		model.addAttribute("pagination", pagination); //페이징
		return "goods/goods_list";
	}



	// 상품 상세페이지 + 판매 정보(가격,할인율)
	@GetMapping("/goods_list_detail.do")
	public String getGoods_list_detail(Goods_SellVO gsvo, Model model) {

		List<GoodsVO> getGoods_list_detail = goodsService.getGoods_list_detail();
		
		Goods_SellVO getGoods_sell = goodsService.getGoods_sell(gsvo); //상품 판매정보

		System.out.println(goodsService.getGoods_list_detail()); //상품 상세보기 내역
		System.out.println(goodsService.getGoods_sell(gsvo)); //상품 판매정보 내역
		
		// model에 화면에 출력할 값 저장
		model.addAttribute("getGoods_list_detail", getGoods_list_detail);
		model.addAttribute("getGoods_sell", getGoods_sell);
		return "goods/goods_list_detail";
	}
	
	
	
}
