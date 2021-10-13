package bucket.kurly.admin.member.controller;

import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import bucket.kurly.admin.member.Admin_MemberVO;
import bucket.kurly.admin.member.Admin_Member_DetailsVO;
import bucket.kurly.admin.member.Admin_Member_MembershipVO;
import bucket.kurly.admin.member.service.Admin_MemberService;

@Controller
public class Admin_MemberController {

	@Autowired
	private Admin_MemberService Admin_MemberService;
	
	
	// 회원 목록 요청
	@RequestMapping("/admin_member.mdo")
	public String selectMember(Model model) throws Exception {
		System.out.println("[회원 관리] - 회원 목록 요청");
		
		List<Admin_MemberVO> admin_member = Admin_MemberService.selectMember();	
		model.addAttribute("admin_member", admin_member);
		
		return "member/admin_member";
	}
	
	// 회원 상세 요청
	@RequestMapping("/admin_member_no.mdo")
	public String selectMember_no(Model model,@RequestParam("member_id") String member_id) throws Exception {
		System.out.println("[회원 관리] - 회원 상세 요청");
		
		Admin_Member_DetailsVO admin_member = Admin_MemberService.selectMember_no(member_id);	
		model.addAttribute("vo", admin_member);
		
		return "member/admin_member_no";
	}
	
	// 회원 계정 상태 변경
	@RequestMapping("/updateMember_state.mdo")
	public String updateMember_state(Model model, @RequestParam("member_no") int member_no,@RequestParam("status") int status) throws Exception {
		System.out.println("[회원 계정 상태 변경 요청]");	
		
		System.out.println(member_no);	
		System.out.println(status);	
		Admin_MemberVO vo = new Admin_MemberVO();
		vo.setMember_no(member_no);
		vo.setMember_status(status);
		
		Admin_MemberService.updateMember_state(vo);
		
		return "redirect:/admin_member.mdo";
	}
	
	
	// 회원 등급 목록 요청
	@RequestMapping("/admin_member_membership.mdo")
	public String selectMember_membership(Model model) throws Exception {
		System.out.println("[회원 관리] - 회원 등급 목록 요청");
		
		List<Admin_Member_MembershipVO> admin_member_membership = Admin_MemberService.selectMember_membership();	
		model.addAttribute("admin_member_membership", admin_member_membership);
		
		return "member/admin_member_membership";
	}
	
	//회원 등급 추가 요청
	@ResponseBody
	@RequestMapping("/member_membership_insert.mdo")
	public String insertMember_membership(Admin_Member_MembershipVO vo, @RequestParam Map<String, Object> param) throws NoSuchAlgorithmException {

		String membership_name = (String) param.get("name");
		int membership_savemoney = Integer.parseInt(String.valueOf(param.get("savemoney")));
		int membership_performance = Integer.parseInt(String.valueOf(param.get("performance")));

		vo.setMember_membership_name(membership_name);
		vo.setMember_membership_savemoney(membership_savemoney);
		vo.setMember_membership_performance(membership_performance);

		Admin_MemberService.insertMember_membership(vo);

		return "0";
	}
	
	// 회원 등급 수정
	@ResponseBody
	@RequestMapping("/member_membership_update.mdo")
	public String updateMember_membership(Admin_Member_MembershipVO vo, @RequestParam Map<String, Object> param) throws Exception {
		int modify_no = Integer.parseInt(String.valueOf(param.get("modify_no")));
		String membership_name = (String) param.get("membership_name");
		int membership_savemoney = Integer.valueOf((String)param.get("membership_savemoney"));
		int membership_performance = Integer.valueOf((String)param.get("membership_performance"));

		vo.setMember_membership_no(modify_no);
		vo.setMember_membership_name(membership_name);
		vo.setMember_membership_savemoney(membership_savemoney);
		vo.setMember_membership_performance(membership_performance);

		Admin_MemberService.updateMember_membership(vo);
		return "0";
	}

	// 회원 등급 삭제
	@ResponseBody
	@RequestMapping("/member_membership_delete.mdo")
	public String deleteMember_membership(@RequestParam Map<String, Object> param) throws Exception {
		
		int member_membership_no = Integer.parseInt(String.valueOf(param.get("modify_no")));
		
		Admin_MemberService.deleteMember_membership(member_membership_no);
		return "0";
	}
	
}



