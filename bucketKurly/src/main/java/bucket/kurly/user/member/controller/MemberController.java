package bucket.kurly.user.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.transform.Result;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import bucket.kurly.user.member.MemberTermsVO;
import bucket.kurly.user.member.MemberVO;
import bucket.kurly.user.member.service.MemberService;
import bucket.kurly.util.Coolsms;
import bucket.kurly.util.SHA256;


@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	  //회원가입
	  @RequestMapping("/insert.do")
	   public String insertMember(@ModelAttribute MemberVO vo, @RequestParam("birth_year") String birth_year,
			   @RequestParam("birth_month") String birth_month, @RequestParam("birth_day") String birth_day,
			   @RequestParam("member_pw") String member_pw) throws NoSuchAlgorithmException  {
		  
		  vo.setMember_birth(birth_year + "/" + birth_month + "/" + birth_day);
	      
		  //password: SHA-256
	      SHA256 sha256 = new SHA256();
	      vo.setMember_pw(sha256.encrypt(member_pw));   
		  
		  memberService.insertMember(vo);
		  
		  return "redirect:/login.do";
	  }
	  
//	  @RequestMapping("회원정보 수정 페이지")
//	  public String myPage(HttpSession session, Model model) {
//		  //조회할 회원 정보 세팅
//		  MemberVO vo = (MemberVO)session.getAttribute("member");
//		  model.addAttribute(vo);
//	  }
	  
	  //회원정보 수정
	  @RequestMapping("/update.do")
	  public String updateMemberInfo(@ModelAttribute MemberVO vo) {
		  memberService.updateMember(vo);
		  return "memberinfo.do";
	  }
	  
	  
	  //회원정보 탈퇴
	  @RequestMapping("/delete.do")
	  public String deleteMember(HttpSession session) {
		MemberVO vo = (MemberVO)session.getAttribute("member");
		memberService.deleteMember(vo);
		session.invalidate();
		return "main.do";  
	  }
	  
	  //회원정보 조회
//	  @RequestMapping("/memberinfo.do")
//	  public void getMember(HttpSession session,Model model) {
//		 String member_id = (String) session.getAttribute("member_id");
//		 
//		 MemberVO vo = memberService.getMember(member_id);
//		 
//		 model.addAttribute("memVO", vo);
//	  }
	  
	  //로그인
	  @RequestMapping("/chklogin.do")
	  public String login(@ModelAttribute MemberVO vo, @RequestParam("pw") String pw, HttpSession session, Model model, HttpServletResponse response) throws Exception{
		  
		  MemberVO result = memberService.login(vo);
		  
		  SHA256 sha256 = new SHA256();
	      String chkpw = sha256.encrypt(pw);
		  
	     
		  if(result==null) {
			  session.setAttribute("id", null);
			  alertView("등록되지 않은 ID입니다 다시 확인해주세요", -1, response);
		  }else if(!(chkpw.equals(result.getMember_pw()))) {
			  session.setAttribute("id", null);
			  alertView("비밀번호를 다시 확인해주세요", -1, response);
		  }
	      
		  session.setAttribute("id", result.getMember_id());
		  session.setAttribute("name", result.getMember_name());    
		
		  return "redirect:/main.do";
	  }
	  
	  //로그아웃
	  @RequestMapping("/logout.do")
	  public String logout(HttpSession session, Model model){
		 
		  session.invalidate();    
		
		  return "redirect:/main.do";
	  }
	  
	  //아이디 찾기
	  @RequestMapping("/chkfind_ID.do")
	  public String find_id(@ModelAttribute MemberVO vo, HttpSession session, Model model) throws Exception {
		  
		  MemberVO result = memberService.find_id(vo);
		  System.out.println(result);
		  
		  if(result==null) {
			  return "redirect:/notFind_ID.do";
		  }
	      
		  session.setAttribute("find_ID",result.getMember_id());
		  return "redirect:/show_ID.do";
	  }
	  
	  //약관 동의
	  @ResponseBody
	  @RequestMapping("/memberTerms")
	  public String insertMemberTerms(@ModelAttribute MemberTermsVO tvo, @RequestBody String paramData) throws Exception {
		  String member_id = paramData.trim();
		  tvo.setMember_id(member_id);
		  
		  memberService.insertMemberTerms(tvo);
		  return "0";
	  }
	  
	  //아이디 중복체크
	  @ResponseBody
	  @RequestMapping("/idCheck")
	  public String idCheck(@RequestBody String paramData) throws Exception {
		  String member_id = paramData.trim();
		  MemberVO vo = memberService.idCheck(member_id);
		 
		  if(vo != null) {
			  return "-1";
		  }else {
			  return "0";
		  }
	  }
	  
	  //이메일 중복체크
	  @ResponseBody
	  @RequestMapping("/emailCheck")
	  public String emailCheck(@RequestBody String paramData) throws Exception {
		  String member_email = paramData.trim();
		  MemberVO vo = memberService.emailCheck(member_email);
		 
		  if(vo != null) {
			  return "-1";
		  }else {
			  return "0";
		  }
	  }
	  
	  //인증번호 전송
	  @ResponseBody
	  @RequestMapping("/sendSMS")
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
	  
	  //인증번호 체크
	  @ResponseBody
	  @RequestMapping("/chkCodeNum")
	  public String chkCodeNum(@RequestBody String paramData, HttpSession session) throws Exception {
		  String code = paramData.trim();
		  String smskey = (String) session.getAttribute("smskey");
		  
		  if(code.isEmpty()) {
			  return "-1";
		  }
		  
		  if(code.equals(smskey)) {
			  return "0";
		  }else {
			  return "-1";
		  }
		 
	  }
	  
	  
	  //경고창
	  public void alertView(String message, int returnPage, HttpServletResponse response) throws IOException {
		  response.setContentType("text/html; charset=utf-8");
		  PrintWriter out = response.getWriter();
		  out.println("<script>alert('" + message + "'); history.go(" + returnPage + "); </script>");
		  out.flush();
		  out.close();	
	  }

}
