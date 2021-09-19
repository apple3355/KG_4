package bucket.kurly.goods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import bucket.kurly.goods.GoodsVO;
import bucket.kurly.goods.service.GoodsService;

@Controller
public class GoodsController {
	


	@Autowired
	private GoodsService goodsService;
	
	//상품 리스트, 상품 갯수, 페이징
	@GetMapping("/goods_list.do")
	public String getGoods_list(Model model) {		
		
		List<GoodsVO> selectgoods_list = goodsService.selectGoods_list();	
		
//		int itemCnt = goodsService.Goods_listCnt(); //아이템 개수
//		Pagination pagination = new Pagination(); //Pagination 객체 생성
//		pagination.pageInfo(page, range, itemCnt);
		
		
		
		System.out.println("상품 목록 요청");
		
		model.addAttribute("selectgoods_list", selectgoods_list);
//		model.addAttribute("pagination", pagination);
		return "goods_list";
	}
		
		

		
		
}

	
	
	
	
