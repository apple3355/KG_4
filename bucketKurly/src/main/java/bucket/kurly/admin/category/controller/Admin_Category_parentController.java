package bucket.kurly.admin.category.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import bucket.kurly.admin.category.Admin_Category_parentVO;
import bucket.kurly.admin.category.Admin_Category_subVO;
import bucket.kurly.admin.category.service.Admin_Category_parentService;
import bucket.kurly.admin.category.service.Admin_Category_subService;
import bucket.kurly.util.S3Service;

@Controller
public class Admin_Category_parentController {

	@Autowired
	private Admin_Category_parentService admin_Category_parentService;
	private S3Service s3Service = S3Service.getInstance();
	@Autowired
	private Admin_Category_subService admin_Category_subService;

	// 카테고리 목록 조회
	@RequestMapping("/admin_category_parent.mdo")
	public String selectCategory_parent(Model model) {

		System.out.println("[상위 카테고리 목록 조회]");
		List<Admin_Category_parentVO> admin_Category_parent = admin_Category_parentService.selectCategory_parent();

		model.addAttribute("admin_Category_parent", admin_Category_parent);

		return "category/admin_category_parent";

	}

	// 카테고리 삭제
	@RequestMapping("/admin_category_parent_deleteDB.mdo")
	public String deleteCategory_parentDB(Model model, @RequestParam("category_parent_no") String category_parent_no) {

		System.out.println("[상위 카테고리 DB 삭제]");
		admin_Category_parentService.deleteCategory_parent(category_parent_no);

		return "redirect:/admin_category_parent.mdo";

	}

	// 카테고리 추가 페이지
	@RequestMapping("/admin_category_parent_insert.mdo")
	public String insertCategory_parent(Model model) {
		return "category/admin_category_parent_insert";

	}

	// 카테고리 추가 DB
	@RequestMapping("/admin_category_parent_insertDB.mdo")
	public String insertCategory_parent(Model model, Admin_Category_parentVO vo, MultipartFile[] file)
			throws IOException {

		System.out.println("[상위 카테고리 DB 추가]");

		String bucket = "bucketkurly/bucketKurly(main)";

		s3Service.upload(file[0].getInputStream(), file[0].getOriginalFilename(), file[0].getContentType(),
				file[0].getSize(), bucket);
		s3Service.upload(file[1].getInputStream(), file[1].getOriginalFilename(), file[1].getContentType(),
				file[1].getSize(), bucket);

		String filePath1 = "https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/"
				+ file[0].getOriginalFilename();
		String filePath2 = "https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/"
				+ file[1].getOriginalFilename();

		vo.setCategory_parent_icon(filePath1);
		vo.setCategory_parent_icon_color(filePath2);
		admin_Category_parentService.insertCategory_parent(vo);

		return "redirect:/admin_category_parent.mdo";

	}

	// 상품 등록 페이지
	@RequestMapping("/admin_goods_insertsell.mdo")
	public String admin_goods_insertsell(Model model) {
		List<Admin_Category_parentVO> admin_Category_parent = admin_Category_parentService.selectCategory_parent();
		model.addAttribute("admin_Category_parent", admin_Category_parent);
		List<Admin_Category_subVO> admin_Category_sub = admin_Category_subService.selectCategory_sub();
		model.addAttribute("admin_Category_sub", admin_Category_sub);
		System.out.println("[상품 등록 페이지 요청]");
		return "goods/admin_goods_insertsell";
	}

	// 상품 등록 페이지
	@RequestMapping("/admin_category_goods_insert.mdo")
	public String admin_category_goods_insert(Model model) {
		List<Admin_Category_parentVO> admin_Category_parent = admin_Category_parentService.selectCategory_parent();
		model.addAttribute("admin_Category_parent", admin_Category_parent);
		System.out.println("[하위 카테고리 category_goods] - 카테고리 상품 등록페이지 요청");
		return "category/admin_category_goods_insert";
	}
	

}