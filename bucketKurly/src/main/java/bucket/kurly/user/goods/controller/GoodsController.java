package bucket.kurly.user.goods.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import bucket.kurly.user.goods.GoodsVO;
import bucket.kurly.user.goods.Goods_CartShowVO;
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
	public String insertGoods_cart(@RequestParam(value="goods_sell_no",required=false) int goods_sell_no,@RequestParam("count") int count) {
		
		Goods_CartVO vo = new Goods_CartVO();
		vo.setGoods_cart_count(count);
		vo.setGoods_cart_sell_no(goods_sell_no);
		vo.setGoods_cart_member_no(1111);
		
		System.out.println(goods_sell_no);
		System.out.println(count);
		goodsService.insertGoods_cart(vo);
		
		
		String path = "/goods_list_detail.do?goods_sell_no="+goods_sell_no;
	      
	    return "redirect:"+path;
	}
	
	//장바구니 정보
	@RequestMapping("/getGoods_cart.do")
	public String getGoods_cart(Model model) {
		
		List<Goods_CartShowVO> goods_cartShowVO = goodsService.getGoods_cart(1111);
		//Integer countGoods_cart = goodsService.countGoods_cart(gcvo);
		
		model.addAttribute("goods_cartShowVO", goods_cartShowVO);
		//model.addAttribute("countGoods_cart",countGoods_cart);
		
		return "goods/goods_cart";
		
	}
	
	//장바구니 삭제
		@ResponseBody
		@RequestMapping("/deleteGoods_cart.do")
		public String deleteGoods_cart(Goods_CartVO gcvo, HttpServletRequest request) {
			
			String id = request.getParameter("goods_id");
			//String sessionId = request.getParameter("sessionId");
			System.out.println(id);
			//System.out.println(sessionId);
			//System.out.println(gcvo.getGoods_cart_no());
			goodsService.deleteGoods_cart(gcvo);
			
			return null;
		}
	
}
