package bucket.kurly.admin.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bucket.kurly.admin.board.Admin_Board_faqVO;
import bucket.kurly.admin.board.service.Admin_Board_faqService;

@Controller
public class Admin_Board_faqController {
	
	@Autowired
	private Admin_Board_faqService Admin_Board_faqService;
	
	
	// 게시글 글 목록 요청
	@RequestMapping("/admin_board_faq.mdo")
	public String selectBoard_faq(Model model)throws Exception {
		System.out.println("[게시글 faq] - 글 목록 요청");
		
		List<Admin_Board_faqVO> board_faqList = Admin_Board_faqService.selectBoard_faq();	
		model.addAttribute("board_faqList", board_faqList);
		
		return "board/admin_board_faq";
	}
	
	// 게시글 상세 페이지로 이동
	@RequestMapping("/admin_board_faq_no.mdo")
	public String select_faq_no(Model model,@RequestParam("faq_no") int faq_no ){ 
		System.out.println("[게시글 faq] - 글 상세페이지 요청");
		
		Admin_Board_faqVO vo = Admin_Board_faqService.selectBoard_faq_no(faq_no); 
		model.addAttribute("vo", vo);
		
		return "board/admin_board_faq_no";
	} 
	
	// 게시글 추가 페이지로 이동
	@RequestMapping("/admin_board_faq_insert.mdo")
	public String insert_faq(Model model){ 
		System.out.println("[게시글 faq] - 글 추가 페이지 요청");
		
		return "board/admin_board_faq_insert";
	} 
	
	// 게시글 추가
	@RequestMapping("/admin_board_faq_insertDB.mdo")
	public String insert_faqDB(Model model,Admin_Board_faqVO vo){ 
		System.out.println("[게시글 faq] - 글 추가 요청");
		
		Admin_Board_faqService.insertBoard_faq(vo); 
		
		return "redirect:/admin_board_faq";
	} 
	

	// 게시글 수정 페이지로 이동
	@RequestMapping("/admin_board_faq_update.mdo")
	public String update_faq_no(Model model,@RequestParam("faq_no") int faq_no){ 
		System.out.println("[게시글 faq] - 글 수정페이지 요청");
		
		Admin_Board_faqVO vo = Admin_Board_faqService.selectBoard_faq_no(faq_no); 
		model.addAttribute("vo", vo);
		
		return "board/admin_board_faq_update";
	} 
	
	// 게시글 수정
	@RequestMapping("/admin_board_faq_updateDB.mdo")
	public String update_faqDB(Model model,Admin_Board_faqVO vo){ 
		System.out.println("[게시글 faq] - 글 수정 요청");
		Admin_Board_faqService.updateBoard_faq_no(vo); 
		
		String path = "/admin_board_faq_no.mdo?faq_no="+vo.getBoard_faq_no();
		
		return "redirect:"+path;
	} 
	
	// 게시글 삭제
	@RequestMapping("/admin_board_faq_deleteDB.mdo")
	public String delete_faqDB(Model model,@RequestParam("faq_no") int faq_no){ 
		System.out.println("[게시글 faq] - 글 삭제 요청");
		Admin_Board_faqService.deleteBoard_faq_no(faq_no); 
		
		return "redirect:/admin_board_faq.mdo";
	} 

}





