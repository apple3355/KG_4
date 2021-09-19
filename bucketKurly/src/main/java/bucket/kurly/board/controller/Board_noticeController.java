package bucket.kurly.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bucket.kurly.board.Board_noticeVO;
import bucket.kurly.board.service.Board_noticeService;
import bucket.kurly.util.Pagination;

//@RequestMapping("/WEB-INF/*")
@Controller
public class Board_noticeController {
	
	@Autowired
	private Board_noticeService board_noticeService;
	
	// 글목록 요청
	@GetMapping("/board_notice.do")
	public String getBoard_noticeList(Model model, // 모델 리스트를 물고 jsp로 감
		@RequestParam(required = false, defaultValue = "1") int page,
		@RequestParam(required = false, defaultValue = "1") int range,
		@RequestParam(required = false, defaultValue = "title") String searchType, //기본 옵션값을 제목으로 한다.
		@RequestParam(required = false, defaultValue = "") String keyword) //키워드 기본 값을 ""으로 한다.
			throws Exception {
		
		System.out.println("글 목록 요청");
		
//		Search search = new Search();
//		search.setSearchType(searchType);
//		search.setKeyword(keyword);

		int listCnt = board_noticeService.getnotice_cnt(); //전체 게시글 개수
		
		Pagination pagination = new Pagination(); //Pagination 객체 생성
		pagination.pageInfo(page, range, listCnt);
		
//		search.pageInfo(page, range, listCnt);
		
		List<Board_noticeVO> board_noticeList = board_noticeService.selectBoard_notice(pagination);	
		
		model.addAttribute("pagination", pagination);
		model.addAttribute("board_noticeList", board_noticeList);
		return "/board_notice";
		
	}


	// 게시물 상세 페이지로 이동
	@RequestMapping("/board_notice_no.do") //get,post 상관없이 모두 보낸다.
	public String select_notice_no(Board_noticeVO vo, Model model, 
			@RequestParam(required = false, defaultValue = "1") int no ){ //RequestParam 단일 파라미터, no=현재페이지 아무것도 안물고 올때 default로 1을 준다.
		int notice_cnt = board_noticeService.select_notice_cnt(no); //조회수 증가
		
		//board_noticeService.select_notice_cnt(no); //조회수 증가
		Board_noticeVO getnotice_no = board_noticeService.select_notice_no(no); // getnotice_no -> vo의 변수, no = num
		//리스트가 아닌 각 vo에서 내용을 가지고 온다.
		Board_noticeVO Prev = board_noticeService.getPrev(no); //이전 글
		Board_noticeVO Next = board_noticeService.getNext(no); //다음 글
		
		model.addAttribute("Prev", Prev);
		model.addAttribute("Next", Next);
		model.addAttribute("notice_cnt", notice_cnt);
		model.addAttribute("getnotice_no", getnotice_no);
		return "/board_notice_no";
	} 

}





