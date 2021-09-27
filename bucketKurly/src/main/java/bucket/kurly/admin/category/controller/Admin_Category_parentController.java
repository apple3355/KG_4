package bucket.kurly.admin.category.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bucket.kurly.admin.category.Admin_Category_parentVO;
import bucket.kurly.admin.category.service.Admin_Category_parentService;


@Controller
public class Admin_Category_parentController {

	@Autowired
	private Admin_Category_parentService admin_Category_parentService;
	
	//카테고리 목록 조회
	@RequestMapping("/admin_category_parent.mdo")
	public String selectCategory_parent(Model model){ 
		
		System.out.println("[상위 카테고리 목록 조회]");
		List<Admin_Category_parentVO> admin_Category_parent = admin_Category_parentService.selectCategory_parent();
		
		model.addAttribute("admin_Category_parent",admin_Category_parent);
		
		return "category/admin_category_parent";
		
   }
	
	//카테고리 삭제
	@RequestMapping("/admin_category_parent_deleteDB.mdo")
	public String deleteCategory_parentDB(Model model,@RequestParam("category_parent_no") String category_parent_no){ 
		
		System.out.println("[상위 카테고리 DB삭제]");
		admin_Category_parentService.deleteCategory_parent(category_parent_no);
		
		return "redirect:/admin_category_parent.mdo";
   }
	

	
}