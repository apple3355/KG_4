package bucket.kurly.admin.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bucket.kurly.admin.board.Admin_Board_noticeVO;
import bucket.kurly.admin.board.service.Admin_Board_noticeService;
import bucket.kurly.user.board.Board_noticeVO;


@Controller
public class Admin_Board_noticeController {
	
	@Autowired
	private Admin_Board_noticeService Admin_Board_noticeService;
	
	// 게시글 글 목록 요청
	@RequestMapping("/admin_board_notice.mdo")
	public String selectBoard_notice(Model model)throws Exception {
		System.out.println("[게시글 notice] - 글 목록 요청");
		
		List<Admin_Board_noticeVO> board_noticeList = Admin_Board_noticeService.selectBoard_notice();	
		model.addAttribute("board_noticeList", board_noticeList);
		
		return "board/admin_board_notice";
		
	}


	// 게시글 상세 페이지로 이동
	@RequestMapping("/admin_board_notice_no.mdo")
	public String select_notice_no(Model model,@RequestParam("notice_no") int notice_no ){ 
		System.out.println("[게시글 notice] - 글 상세페이지 요청");
		
		Admin_Board_noticeVO vo = Admin_Board_noticeService.selectBoard_notice_no(notice_no); 
		model.addAttribute("vo", vo);
		
		return "board/admin_board_notice_no";
	} 
	
	// 게시글 추가 페이지로 이동
	@RequestMapping("/admin_board_notice_insert.mdo")
	public String insert_notice(Model model){ 
		System.out.println("[게시글 notice] - 글 추가 페이지 요청");
		
		return "board/admin_board_notice_insert";
	} 
	
	// 게시글 추가
	@RequestMapping("/admin_board_notice_insertDB.mdo")
	public String insert_noticeDB(Model model,Admin_Board_noticeVO vo){ 
		System.out.println("[게시글 notice] - 글 추가 요청");
		
		Admin_Board_noticeService.insertBoard_notice(vo); 
		
		return "redirect:/admin_board_notice.mdo";
	} 
	

	// 게시글 수정 페이지로 이동
	@RequestMapping("/admin_board_notice_update.mdo")
	public String update_notice_no(Model model,@RequestParam("notice_no") int notice_no){ 
		System.out.println("[게시글 notice] - 글 수정페이지 요청");
		
		Admin_Board_noticeVO vo = Admin_Board_noticeService.selectBoard_notice_no(notice_no); 
		model.addAttribute("vo", vo);
		
		return "board/admin_board_notice_update";
	} 
	
	// 게시글 수정
	@RequestMapping("/admin_board_notice_updateDB.mdo")
	public String update_noticeDB(Model model,Admin_Board_noticeVO vo){ 
		System.out.println("[게시글 notice] - 글 수정 요청");
		Admin_Board_noticeService.updateBoard_notice_no(vo); 
		String path = "/admin_board_notice_no.mdo?notice_no="+vo.getBoard_notice_no();
		
		return "redirect:"+path;
	} 
	
	// 게시글 삭제
	@RequestMapping("/admin_board_notice_deleteDB.mdo")
	public String delete_noticeDB(Model model,@RequestParam("notice_no") int notice_no){ 
		System.out.println("[게시글 notice] - 글 삭제 요청");
		Admin_Board_noticeService.deleteBoard_notice_no(notice_no); 
		
		return "redirect:/admin_board_notice.mdo";
	} 
}





