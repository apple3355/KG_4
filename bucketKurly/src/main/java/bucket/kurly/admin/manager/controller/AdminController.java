package bucket.kurly.admin.manager.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.postgresql.util.PSQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import bucket.kurly.admin.manager.AdminTermsVO;
import bucket.kurly.admin.manager.AdminVO;
import bucket.kurly.admin.manager.service.AdminService;
import bucket.kurly.util.SHA256;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	// 관리자 로그인
	@RequestMapping("/chklogin.mdo")
	public String chklogin(@ModelAttribute AdminVO vo, HttpSession session, HttpServletResponse response) throws Exception {
		String admin_pw = vo.getAdmin_pw();
		String admin_id = vo.getAdmin_id();
	
		AdminVO result = adminService.login(admin_id);
		
		SHA256 sha256 = new SHA256();
		String chkpw = sha256.encrypt(admin_pw);

		if (result == null) {
			alertView("등록되지 않은 ID입니다 다시 확인해주세요", -1, response);
		} else if (!(chkpw.equals(result.getAdmin_pw()))) {
			alertView("비밀번호를 다시 확인해주세요", -1, response);
		}

		session.setAttribute("id", admin_id);
		
		
		return "redirect:/admin_main.mdo";
	}

	// 관리자 로그아웃
	@RequestMapping("/logout.mdo")
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
		return "admin_login.mdo";
	}

	
	// 약관리스트 조회
	@RequestMapping("/admin_terms_getList.mdo")
	public String getTermsList(AdminTermsVO vo, Model model) throws IOException, PSQLException {

		List<AdminTermsVO> terms = adminService.getTermsList();
		model.addAttribute("terms", terms);

		return "manager/admin_terms_getList";
	}

	// 약관 상세페이지 조회
	@RequestMapping("/admin_terms_get.mdo")
	public String getTerms(AdminTermsVO vo, @RequestParam(value = "no") int seq, Model model)
			throws IOException, PSQLException {
		// 약관리스트 글의 번호(seq)
		// System.out.println(seq);
		AdminTermsVO terms = adminService.getTerms(seq);
		model.addAttribute("terms", terms);

		return "manager/admin_terms_get";
	}

	// 약관등록 페이지 이동
	@RequestMapping("/admin_terms_insert.mdo")
	public String getTermsInsert() {

		return "manager/admin_terms_insert";
	}

	// 약관등록
	@RequestMapping("/insertAdminTerms.mdo")
	public String insertAdminTerms(AdminTermsVO vo, @RequestParam Map<String, Object> param)
			throws IOException, PSQLException {

		vo.setTerms_no((Integer.valueOf((String) param.get("terms_no"))));
		vo.setTerms_title((String) param.get("terms_title"));
		vo.setTerms_essential((String) param.get("terms_essential"));
		vo.setTerms_contents((String) param.get("terms_contents"));
		vo.setTerms_reg_date((String) param.get("terms_reg_date"));

		adminService.insertAdminTerms(vo);

		return "redirect:/manager/admin_terms_getList.mdo";
	}

	// 약관 수정
	@RequestMapping("/admin_terms_update.mdo")
	public String updateAdminTerms(AdminTermsVO vo, @RequestParam Map<String, Object> param)
			throws IOException, PSQLException {

		vo.setTerms_no((Integer.valueOf((String) param.get("terms_no"))));
		vo.setTerms_title((String) param.get("terms_title"));
		vo.setTerms_essential((String) param.get("terms_essential"));
		vo.setTerms_contents((String) param.get("terms_contents"));
		vo.setTerms_reg_date((String) param.get("terms_reg_date"));

		adminService.updateAdminTerms(vo);
		System.out.println("VO 출력: " + vo);

		// return "redirect:/admin_terms_get.do?no=" + seq; //수정한 페이지 보여줌
		return "redirect:/manager/admin_terms_getList.mdo";
	}

	// 약관 삭제
	@RequestMapping("/admin_terms_delete.mdo")
	public String deleteAdminTerms(AdminTermsVO vo, @RequestParam(value = "no") int seq)
			throws IOException, PSQLException {

		AdminTermsVO terms = adminService.getTerms(seq);
		System.out.println(seq);

		adminService.deleteAdminTerms(terms);
		System.out.println("삭제 실행됨");
		return "redirect:/manager/admin_terms_getList.mdo";
	}

	// 관리자 등록
	@ResponseBody
	@RequestMapping("/register.mdo")
	public String insertAdmin(AdminVO vo, @RequestParam Map<String, Object> param) throws NoSuchAlgorithmException {
		String admin_name = (String) param.get("admin_name");
		String admin_position = (String) param.get("admin_position");
		String admin_id = (String) param.get("admin_id");
		String admin_pw = (String) param.get("admin_pw");

		vo.setAdmin_name(admin_name);
		vo.setAdmin_position(admin_position);
		vo.setAdmin_id(admin_id);
		SHA256 sha256 = new SHA256();
		vo.setAdmin_pw(sha256.encrypt(admin_pw));

		adminService.insertAdmin(vo);

		return "0";
	}

	// 관리자 목록
	@RequestMapping("/admin_management.mdo")
	public String listGET(Model model) throws Exception {
		model.addAttribute("adminList", adminService.getAdminList());
		return "manager/admin_management";
	}

	// 관리자 수정
	@ResponseBody
	@RequestMapping("/admin_modify.mdo")
	public String updateAdmin(AdminVO vo, @RequestParam Map<String, Object> param) throws Exception {
		int modify_no = Integer.parseInt(String.valueOf(param.get("modify_no")));
		String modify_name = (String) param.get("admin_name");
		String modify_id = (String) param.get("admin_id");
		String modify_position = (String) param.get("admin_position");
		String modify_pw = (String) param.get("admin_pw");

		vo.setAdmin_no(modify_no);
		vo.setAdmin_name(modify_name);
		vo.setAdmin_position(modify_position);
		vo.setAdmin_id(modify_id);
		SHA256 sha256 = new SHA256();
		vo.setAdmin_pw(sha256.encrypt(modify_pw));

		adminService.updateAdmin(vo);
		return "0";
	}

	// 관리자 삭제
	@ResponseBody
	@RequestMapping("/admin_delete.mdo")
	public String deleteAdmin(AdminVO vo, @RequestParam Map<String, Object> param) throws Exception {
		int modify_no = Integer.parseInt(String.valueOf(param.get("modify_no")));

		adminService.deleteAdmin(modify_no);
		return "0";
	}

	// 경고창
	public void alertView(String message, int returnPage, HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('" + message + "'); history.go(" + returnPage + "); </script>");
		out.flush();
		out.close();
	}

}
