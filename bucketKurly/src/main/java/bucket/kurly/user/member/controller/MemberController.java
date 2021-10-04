package bucket.kurly.user.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import bucket.kurly.user.member.MemberDetailVO;
import bucket.kurly.user.member.MemberTermsVO;
import bucket.kurly.user.member.MemberVO;
import bucket.kurly.user.member.service.MemberService;
import bucket.kurly.util.Coolsms;
import bucket.kurly.util.SHA256;


@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private JavaMailSender mailSender;

	// 회원가입
	@RequestMapping("/insert.do")
	public String insertMember(@ModelAttribute MemberVO vo, @ModelAttribute MemberDetailVO dvo,
			@RequestParam("birth_year") String birth_year, @RequestParam("birth_month") String birth_month,
			@RequestParam("birth_day") String birth_day, @RequestParam("member_pw") String member_pw)
			throws NoSuchAlgorithmException {

		vo.setMember_birth(birth_year + "/" + birth_month + "/" + birth_day);

		// password: SHA-256
		SHA256 sha256 = new SHA256();
		vo.setMember_pw(sha256.encrypt(member_pw));

		memberService.insertMember(vo);
		memberService.insertMemberDetail(dvo);
		return "redirect:/login.do";
	}

//	  @RequestMapping("회원정보 수정 페이지")
//	  public String myPage(HttpSession session, Model model) {
//		  //조회할 회원 정보 세팅
//		  MemberVO vo = (MemberVO)session.getAttribute("member");
//		  model.addAttribute(vo);
//	  }

	// 회원정보 수정
	@RequestMapping("/update.do")
	public String updateMemberInfo(@ModelAttribute MemberVO vo, @RequestParam("birth_year") String birth_year,
			@RequestParam("birth_month") String birth_month, @RequestParam("birth_day") String birth_day,
			@RequestParam("member_pw") String member_pw) throws NoSuchAlgorithmException {

		vo.setMember_birth(birth_year + "/" + birth_month + "/" + birth_day);
		SHA256 sha256 = new SHA256();
		vo.setMember_pw(sha256.encrypt(member_pw));

		memberService.updateMember(vo);
		return "member/member_info";
	}

	// 회원정보 탈퇴
	@RequestMapping("/delete.do")
	public String deleteMember(HttpSession session) {
		MemberVO vo = (MemberVO) session.getAttribute("member");
		memberService.deleteMember(vo);
		session.invalidate();
		return "main.do";
	}

	// 회원정보 조회
	@RequestMapping("/memberinfo.do")
	public String getMember(HttpSession session, Model model) {
		String memebr_id = (String) session.getAttribute("id");
		MemberVO vo = memberService.selectMember(memebr_id);
		MemberDetailVO dvo = memberService.selectMemberDetail(memebr_id);


		String birth = vo.getMember_birth();
		String[] getBirth = birth.split("/");
		String year = getBirth[0];
		String month = getBirth[1];
		String day = getBirth[2];

		model.addAttribute("mypage", vo);
		model.addAttribute("memberDetail", dvo);
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("day", day);

		return "member/member_info";
	}

	// 로그인
	@RequestMapping("/chklogin.do")
	public String login(@ModelAttribute MemberVO vo, @RequestParam("pw") String pw, HttpSession session, HttpServletResponse response) throws Exception {
		
		MemberVO result = memberService.login(vo);
		

		SHA256 sha256 = new SHA256();
		String chkpw = sha256.encrypt(pw);

		if (result == null) {
			session.setAttribute("id", null);
			alertView("등록되지 않은 ID입니다 다시 확인해주세요", -1, response);
		} else if (!(chkpw.equals(result.getMember_pw()))) {
			session.setAttribute("id", null);
			alertView("비밀번호를 다시 확인해주세요", -1, response);
		}

		String member_id = result.getMember_id();
		MemberDetailVO dvo = memberService.selectMemberDetail(member_id);
		String rank = dvo.getMember_rank();
		session.setAttribute("rank", rank);
		session.setAttribute("id", member_id);
		session.setAttribute("name", result.getMember_name());

		return "redirect:/main.do";
	}

	// 아이디 찾기
	@RequestMapping("/chkfind_ID.do")
	public String find_id(@ModelAttribute MemberVO vo, HttpSession session, Model model) throws Exception {

		MemberVO result = memberService.find_id(vo);
		System.out.println(result);

		if (result == null) {
			return "redirect:/notFind_ID.do";
		}

		session.setAttribute("find_ID", result.getMember_id());
		return "redirect:/show_ID.do";
	}

	// 비밀번호 찾기 회원인증
	@RequestMapping("/find_pwd_chk.do")
	public String find_pw(@ModelAttribute MemberVO vo, HttpSession session, HttpServletResponse response)
			throws Exception {

		MemberVO result = memberService.find_pwd(vo);

		if (result == null) {
			alertView("잘못된 정보입니다", -1, response);
		}
		session.setAttribute("member_id", result.getMember_id());
		session.setAttribute("member_email", result.getMember_email());
		return "login/login_find_pwd_chk";
	}

	@RequestMapping("/find_pwd_mailSender.do")
	public String mailSender(HttpSession session, HttpServletResponse response) throws Exception {

		String receiver = (String) session.getAttribute("member_email");

		response.setContentType("text/html; charset=utf-8");
		PrintWriter alert = response.getWriter();
//			alert.println("<script>alert('이메일로 인증번호가 전송되었습니다.'); </script>");
//			alert.flush();

		Random r = new Random();
		int randnum = r.nextInt(4589362) + 49311;
		session.setAttribute("cert_number", randnum);

		String subject = "[버켓컬리]인증번호를 안내 드립니다.";
		String content = System.getProperty("line.separator") + // 한줄씩 줄간격을 두기위해 작성

				System.getProperty("line.separator") +

				"안녕하세요 회원님 저희 홈페이지를 찾아주셔서 감사합니다"

				+ System.getProperty("line.separator") +

				System.getProperty("line.separator") +

				" 인증번호는 " + randnum + " 입니다. "

				+ System.getProperty("line.separator") +

				System.getProperty("line.separator") +

				"받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다."; // 내용

		String from = "bucketkurly@gmail.com";
		String to = receiver;

		try {
			MimeMessage mail = mailSender.createMimeMessage();
			MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8");

			// true는 멀티파트 메세지를 사용하겠다는 의미
			/*
			 * 단순한 텍스트 메세지만 사용시엔 아래의 코드도 사용 가능 MimeMessageHelper mailHelper = new
			 * MimeMessageHelper(mail,"UTF-8");
			 */
			mailHelper.setFrom(from);
			// 빈에 아이디 설정한 것은 단순히 smtp 인증을 받기 위해 사용 따라서 보내는이(setFrom())반드시 필요
			// 보내는이와 메일주소를 수신하는이가 볼때 모두 표기 되게 원하신다면 아래의 코드를 사용하시면 됩니다.
			// mailHelper.setFrom("보내는이 이름 <보내는이 아이디@도메인주소>");
			mailHelper.setTo(to);
			mailHelper.setSubject(subject);
			mailHelper.setText(content, true);
			// true는 html을 사용하겠다는 의미입니다.

			/*
			 * 단순한 텍스트만 사용하신다면 다음의 코드를 사용하셔도 됩니다. mailHelper.setText(content);
			 */

			mailSender.send(mail);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "login/login_find_pwd_mailSender";
	}

	@ResponseBody
	@RequestMapping("/checkcertKey.do")
	public String checkcertKey(HttpSession session, @RequestBody String paramData) throws Exception {
		String certkey = paramData.trim();
		System.out.println("입력 키 : " + certkey);
		String cert_number = String.valueOf(session.getAttribute("cert_number"));
		System.out.println("인증번호 : " + cert_number);
		
		if(certkey.equals(cert_number)) {
			return "0";
		}else {
			return "-1";
		}
	}
	
	@RequestMapping("/find_pwd_setPass.do")
	public String find_pwd_setPass(HttpSession session) throws Exception {
		return "login/login_find_pwd_setPass";
	}
	
	@RequestMapping("/update_pwd.do")
	public String update_pwd(@RequestParam("member_pw") String member_pw, HttpSession session, MemberVO vo) throws Exception {
		String member_id = (String) session.getAttribute("member_id");
		SHA256 sha256 = new SHA256();
		vo.setMember_pw(sha256.encrypt(member_pw));
		vo.setMember_id(member_id);
		memberService.update_pwd(vo);
		return "login/login";
	}

	// 약관 동의
	@ResponseBody
	@RequestMapping("/memberTerms")
	public String insertMemberTerms(@ModelAttribute MemberTermsVO tvo, @RequestBody String paramData) throws Exception {
		String member_id = paramData.trim();
		tvo.setMember_id(member_id);

		memberService.insertMemberTerms(tvo);
		return "0";
	}

	// 아이디 중복체크
	@ResponseBody
	@RequestMapping("/idCheck.do")
	public String idCheck(@RequestBody String paramData) throws Exception {
		String member_id = paramData.trim();
		MemberVO vo = memberService.idCheck(member_id);

		if (vo != null) {
			return "-1";
		} else {
			return "0";
		}
	}

	// 현재 비밀번호체크
	@ResponseBody
	@RequestMapping("/pwCheck.do")
	public String pwCheck(@RequestParam Map<String, Object> param) throws Exception {
		String member_pwd = (String) param.get("member_pw");
		SHA256 sha256 = new SHA256();
		String member_pw = sha256.encrypt(member_pwd);
		MemberVO vo = memberService.pwCheck(member_pw);

		if (vo != null) {
			return "-1";
		} else {

			return "0";
		}

	}

	// 이메일 중복체크
	@ResponseBody
	@RequestMapping("/emailCheck.do")
	public String emailCheck(@RequestParam Map<String, Object> param) throws Exception {
		String member_email = (String) param.get("member_email");
		MemberVO vo = memberService.emailCheck(member_email);

		if (vo != null) {
			return "-1";
		} else {
			return "0";
		}
	}

	// 전화번호 중복체크
	@ResponseBody
	@RequestMapping("/phoneCheck.do")
	public String phoneCheck(@RequestParam Map<String, Object> param) throws Exception {
		String member_phone = (String) param.get("member_phone");
		MemberVO vo = memberService.phoneCheck(member_phone);

		if (vo != null) {
			return "-1";
		} else {
			return "0";
		}
	}

	// 인증번호 전송
	@ResponseBody
	@RequestMapping("/sendSMS.do")
	public String sendSMS(@RequestBody String paramData, HttpSession session) throws Exception {
		String member_phone = paramData.trim();
		String smskey;

		if (member_phone.isEmpty()) {
			return "-1";
		} else {
			Coolsms coolsms = new Coolsms();

			smskey = coolsms.createKey();
			session.setAttribute("smskey", smskey);
			StringBuffer message = new StringBuffer("[버켓컬리 - 휴대폰인증]\n");
			message.append("인증번호는 ");
			message.append(smskey);
			message.append("입니다.");

			coolsms.sendSms(member_phone, message.toString());
			return "0";
		}

	}

	// 인증번호 체크
	@ResponseBody
	@RequestMapping("/chkCodeNum.do")
	public String chkCodeNum(@RequestBody String paramData, HttpSession session) throws Exception {
		String code = paramData.trim();
		String smskey = (String) session.getAttribute("smskey");

		if (code.isEmpty()) {
			return "-1";
		}

		if (code.equals(smskey)) {
			return "0";
		} else {
			return "-1";
		}

	}

	//로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session){
		session.invalidate();
		
		return "redirect:/main.do";
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
