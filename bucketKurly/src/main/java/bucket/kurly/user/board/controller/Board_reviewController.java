package bucket.kurly.user.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import bucket.kurly.user.board.Board_reviewVO;
import bucket.kurly.user.board.service.Board_reviewService;

@Controller
public class Board_reviewController {
	
	@Autowired
	private Board_reviewService boardService;

	// 상품 디테일 쪽 - 상품 리뷰
	@RequestMapping("/goods_list_review.do")
	public String getGoods_list_review(Model model, 
			@RequestParam(value="goods_sell_no",required = true) String goods_sell_no) {	
	
		List<Board_reviewVO> reviewList = boardService.selectBoard_review(goods_sell_no);
		System.out.println(reviewList);
		model.addAttribute("reviewList", reviewList);
		
		
		return "goods/goods_list_review";
	}
	

}
