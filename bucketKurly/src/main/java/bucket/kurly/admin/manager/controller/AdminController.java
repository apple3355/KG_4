package bucket.kurly.admin.manager.controller;


import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.postgresql.util.PSQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bucket.kurly.admin.manager.AdminTermsVO;
import bucket.kurly.admin.manager.service.AdminService;


@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	//약관리스트 조회
	@RequestMapping("/admin_terms_getList.mdo")
	public String getTermsList(AdminTermsVO vo, Model model) throws IOException, PSQLException {				

		List<AdminTermsVO> terms = adminService.getTermsList();	
		model.addAttribute("terms", terms);
					
		return "manager/admin_terms_getList";
	}
	
	
	//약관 상세페이지 조회
	@RequestMapping("/admin_terms_get.mdo")
	public String getTerms(AdminTermsVO vo, @RequestParam(value="no") int seq, Model model) throws IOException, PSQLException {
														//약관리스트 글의 번호(seq)
		//System.out.println(seq);
		AdminTermsVO terms = adminService.getTerms(seq);
		model.addAttribute("terms", terms);
		
		return "manager/admin_terms_get";
	}
	
	
	//약관등록 페이지 이동
	@RequestMapping("/admin_terms_insert.mdo")
	public String getTermsInsert() {
			
		return "manager/admin_terms_insert";
	}
	
	
	//약관등록
	@RequestMapping("/insertAdminTerms.mdo")
	public String insertAdminTerms(AdminTermsVO vo, @RequestParam Map<String, Object> param) throws IOException, PSQLException {
		
		vo.setTerms_no((Integer.valueOf((String) param.get("terms_no"))));
		vo.setTerms_title((String) param.get("terms_title"));
		vo.setTerms_essential((String) param.get("terms_essential"));
		vo.setTerms_contents((String) param.get("terms_contents"));
		vo.setTerms_reg_date((String) param.get("terms_reg_date"));
		
		adminService.insertAdminTerms(vo);
		  
		return "redirect:/manager/admin_terms_getList.mdo";
	}
	
	
	//약관 수정
	@RequestMapping("/admin_terms_update.mdo")
	public String updateAdminTerms(AdminTermsVO vo, @RequestParam Map<String, Object> param) throws IOException, PSQLException {

		vo.setTerms_no((Integer.valueOf((String) param.get("terms_no"))));
		vo.setTerms_title((String) param.get("terms_title"));
		vo.setTerms_essential((String) param.get("terms_essential"));
		vo.setTerms_contents((String) param.get("terms_contents"));
		vo.setTerms_reg_date((String) param.get("terms_reg_date"));

		adminService.updateAdminTerms(vo);
		System.out.println("VO 출력: " + vo);
		
		//return "redirect:/admin_terms_get.do?no=" + seq; //수정한 페이지 보여줌		
		return "redirect:/manager/admin_terms_getList.mdo";
	}
	
	
	
	//약관 삭제
	@RequestMapping("/admin_terms_delete.mdo")
	public String deleteAdminTerms(AdminTermsVO vo, @RequestParam(value="no") int seq) throws IOException, PSQLException {
		
		AdminTermsVO terms = adminService.getTerms(seq);
		System.out.println(seq);
		
		adminService.deleteAdminTerms(terms);
		System.out.println("삭제 실행됨");
		return "redirect:/manager/admin_terms_getList.mdo";
	}


	  
}
