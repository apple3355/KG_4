package bucket.kurly.admin.category.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import bucket.kurly.admin.category.Admin_Category_goodsVO;
import bucket.kurly.admin.category.Admin_Category_subVO;
import bucket.kurly.admin.category.service.Admin_Category_goodsService;
import bucket.kurly.util.S3Service;

@Controller
public class Admin_Category_goodsController {

	@Autowired
	private Admin_Category_goodsService Admin_Category_goodsService;
	private S3Service s3Service = S3Service.getInstance();

//	@ResponseBody
//	@RequestMapping("/selectCategory_goods.mdo")
//	public ModelAndView selectCategory_sub(@RequestParam Map<String, Object> param, HttpServletRequest request)
//			throws IOException {
//		String sub_no = (String) param.get("sub_no");
//		System.out.println(parent_no);
//		List<Admin_Category_subVO> admin_Category_goods = admin_Category_goodsService.selectCategory_goods_name(sub_no);
//		ModelAndView mv = new ModelAndView("jsonView");
//
//		mv.addObject("admin_Category_goods", admin_Category_goods);
//
//		return mv;
//
//	}

	// 카테고리 GOODS DB 목록 조회
	@RequestMapping("/admin_category_goodslist.mdo")
	public String selectCategory_goods(Model model) {

		System.out.println("[하위 카테고리 목록 조회]");
		List<Admin_Category_goodsVO> admin_Category_goods = Admin_Category_goodsService.selectCategory_goods();

		model.addAttribute("admin_Cateadmin_category_goodslistgory_goods", admin_Category_goods);
		return "category/admin_category_goodslist";
	}

	// 카테고리 상품 상세페이지 이동
	@RequestMapping("/admin_category_goodslist_no.mdo")
	public String selectCategory_goods_no(Model model, @RequestParam("category_goods_no") String category_goods_no) {

		System.out.println("[하위 카테고리 category_goods] - 카테고리 상품 상세페이지 요청");
		Admin_Category_goodsVO vo = Admin_Category_goodsService.selectCategory_goods_no(category_goods_no);

		model.addAttribute("vo", vo);
		return "category/admin_category_goodslist_no";
	}

	// 카테고리 상품 DB 삭제
	@RequestMapping("/admin_category_goodslist_deleteDB.mdo")
	public String admin_category_goodslist_deleteDB(Model model,
			@RequestParam("category_goods_no") String category_goods_no) {

		System.out.println("[하위 카테고리 DB 삭제]");
		Admin_Category_goodsService.deleteCategory_goods(category_goods_no);

		return "redirect:/admin_category_goodslist.mdo";
	}

	// 카테고리 상품 수정 페이지로 이동
	@RequestMapping("/admin_category_goodslist_update.mdo")
	public String admin_category_goodslist_update(Model model,
			@RequestParam("category_goods_no") String category_goods_no) {
		System.out.println("[하위 카테고리 category_goods] - 카테고리 상품 수정페이지 요청");

		Admin_Category_goodsVO vo = Admin_Category_goodsService.selectCategory_goods_no(category_goods_no);
		model.addAttribute("vo", vo);

		return "category/admin_category_goodslist_update";
	}

	// 카테고리 상품 DB 수정
	@RequestMapping("/admin_category_goodslist_updateDB.mdo")
	public String admin_category_goodslist_updateDB(Model model, Admin_Category_goodsVO vo) {
		System.out.println("[하위 카테고리 DB 수정]");
		Admin_Category_goodsService.updateCategory_goods(vo);
		String path = "/admin_category_goodslist_no.mdo?category_goods_no=" + vo.getCategory_goods_no();

		System.out.println("redirect:" + path);
		System.out.println("path : " + path);

		return "redirect:" + path;
	}

	// 카테고리 상품 등록페이지 이동
	@RequestMapping("/admin_category_goods_insert.mdo")
	public String admin_category_goodsinsert(Model model) {
		System.out.println("[하위 카테고리 category_goods] - 카테고리 상품 등록페이지 요청");
		return "category/admin_category_goods_insert";
	}

	// 카테고리 상품 DB 등록
	@RequestMapping("/admin_category_goods_insertDB.mdo")
	public String insertCategory_goods(Model model, Admin_Category_goodsVO vo) {
		// , MultipartFile[] file) throws IOException
		System.out.println("[하위 카테고리 DB 추가]");
		System.out.println(vo.toString());
		System.out.println(file.length);
		String bucket = "bucketkurly/bucketKurly(main)";

//		for (int i = 0; i < file.length; i++) {
//			if (!file[i].getOriginalFilename().equals("")) {
//				System.out.println("================== file start ==================");
//				System.out.println("파일 이름: " + file[i].getName());
//				System.out.println("파일 실제 이름: " + file[i].getOriginalFilename());
//				System.out.println("파일 크기: " + file[i].getSize());
//				System.out.println("content type: " + file[i].getContentType());
//				System.out.println("================== file   END ==================");
//			}
//		}

//		System.out.println(S3Service.class);
//		s3Service.upload(file[0].getInputStream(), file[0].getOriginalFilename(), file[0].getContentType(), file[0].getSize(), bucket);
//		s3Service.upload(file[1].getInputStream(), file[1].getOriginalFilename(), file[1].getContentType(), file[1].getSize(), bucket);
//
//		String filePath1 = "https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/" + file[0].getOriginalFilename();
//		String filePath2 = "https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/" + file[1].getOriginalFilename();
//		String filePath3 = "https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/" + file[2].getOriginalFilename();
//		String filePath4 = "https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/" + file[3].getOriginalFilename();
//		
//		vo.setCategory_goods_image_thumb(filePath1);
//		vo.setCategory_goods_image_head(filePath2);
//		vo.setCategory_goods_image_contents(filePath3);
//		vo.setCategory_goods_image_contents_detail(filePath4);
//		Admin_Category_goodsService.insertCategory_goods(vo);
//		
//		Admin_Category_goodsService.insertCategory_goods(vo);
		return "redirect:/admin_category_goodslist.mdo";

	}

}
