package bucket.kurly.admin.category.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import bucket.kurly.admin.category.Admin_Category_goodsVO;
import bucket.kurly.admin.category.service.Admin_Category_goodsService;


@Controller
public class Admin_Category_goodsController {
	
	@Autowired
	private Admin_Category_goodsService admin_Category_goodsService;

	// 중위 카테고리에 해당하는 상품 카테고리 리스트
	@ResponseBody
	@RequestMapping("/selectCategory_goods.mdo")
	public ModelAndView selectCategory_sub(@RequestParam Map<String, Object> param, HttpServletRequest request)
			throws IOException {
		String sub_no = (String) param.get("sub_no");
		List<Admin_Category_goodsVO> admin_Category_goods = admin_Category_goodsService.selectCategory_goods_name(sub_no);
		ModelAndView mv = new ModelAndView("jsonView");

		mv.addObject("admin_Category_goods", admin_Category_goods);

		return mv;

	}
}
