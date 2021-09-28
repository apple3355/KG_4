package bucket.kurly.admin.category.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bucket.kurly.admin.category.Admin_Category_subVO;
import bucket.kurly.admin.category.service.Admin_Category_subService;

@Controller
public class Admin_Category_subController {
	@Autowired
	private Admin_Category_subService admin_Category_subService;
	
	//카테고리 목록 조회
	@RequestMapping("/admin_category_sub.mdo")
	public String selectCategory_sub(Model model){ 
		
		System.out.println("[중위 카테고리 목록 조회]");
		List<Admin_Category_subVO> admin_Category_sub = admin_Category_subService.selectCategory_sub();
		
		model.addAttribute("admin_Category_sub",admin_Category_sub);
		
		return "category/admin_category_sub";
		
   }
	
	//카테고리 삭제
	@RequestMapping("/admin_category_sub_deleteDB.mdo")
	public String deleteCategory_subDB(Model model, @RequestParam("category_sub_no") String category_sub_no){ 
		
		System.out.println("[중위 카테고리 DB 삭제]");
		admin_Category_subService.deleteCategory_sub(category_sub_no);
		
		return "redirect:/admin_category_sub.mdo";

   }
	
	//카테고리 추가 페이지
	@RequestMapping("/admin_category_sub_insert.mdo")
	public String insertCategory_sub(Model model){ 		
		return "category/admin_category_sub_insert";

   }
	
	//카테고리 추가 DB
	@RequestMapping("/admin_category_sub_insertDB.mdo")
	public String insertCategory_sub(Model model, Admin_Category_subVO vo) throws IOException{ 
		System.out.println("[중위 카테고리 DB 추가]");
		
		admin_Category_subService.insertCategory_sub(vo);
		return "redirect:/admin_category_sub.mdo";

   }
	
}
