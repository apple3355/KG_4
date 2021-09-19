package bucket.kurly.board.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.postgresql.util.PSQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import bucket.kurly.board.Board_fileVO;
import bucket.kurly.board.Board_qnaVO;
import bucket.kurly.board.service.Board_qnaService;
import bucket.kurly.util.Pagination;
import bucket.kurly.util.S3Service;

@Controller
public class Board_qnaController {

	@Autowired
	private Board_qnaService board_qnaService;
	private S3Service s3Service = S3Service.getInstance();

	// 글 목록 요청
	@RequestMapping("/board_qna.do")
	public String getBoard_qnaList(Model model,
			@RequestParam(required = false, defaultValue = "1") int page, 
			@RequestParam(required = false, defaultValue = "1") int range) {
		
		
		System.out.println("[1:1 문의 게시글] 목록페이지 요청");
		//전체 게시글 개수
		int listCnt = board_qnaService.selectBoard_qnaListCnt();
		
		Pagination pagination = new Pagination();
		pagination.pageInfo(page, range, listCnt);
		System.out.println("page=======>"+page);
		System.out.println("range=======>"+range);
		System.out.println("pageCnt=======>"+pagination.getPageCnt());
		System.out.println("listCnt=======>"+listCnt);
		System.out.println("startpage=======>"+pagination.getStartPage());
		System.out.println("endpage=======>"+pagination.getEndPage());
		List<Board_qnaVO> board_qnaList = board_qnaService.selectBoard_qna(pagination);
		
		model.addAttribute("pagination",pagination);
		model.addAttribute("board_qnaList", board_qnaList);
		
		return "board_qna";
	}

	// 글쓰기 요청
	@RequestMapping("/board_qna_insert.do")
	public String getBoard_qnaInsert(Model model) {
		System.out.println("[1:1 문의 게시글] 등록페이지 요청");
		return "board_qna_insert";
	}

	// 글쓰기 안의 주문조회 iframe요청
	@RequestMapping("/board_qna_insert_orderNoSearch.do")
	public String getBoard_qna_insert_orderNoSearch(Model model) {
		System.out.println("[1:1 문의 게시글] 등록페이지 - iframe(주문조회) 요청");
		return "board_qna_insert_orderNoSearch";
	}

	// 글 DB 등록 기능
	@RequestMapping("/board_qna_insertDB.do")
	public String board_qna_insertDB(Board_qnaVO qnavo, MultipartFile[] file, Model model)
			throws IOException, PSQLException, IllegalStateException {
		System.out.println("[1:1 문의 게시글] 등록페이지 - DB insert 요청");
		System.out.println("file.length=========>" + file.length);
		
		for (int i = 0; i < file.length; i++) {
			if (!file[i].getOriginalFilename().equals("")) {
				System.out.println("================== file start ==================");
				System.out.println("파일 이름: " + file[i].getName());
				System.out.println("파일 실제 이름: " + file[i].getOriginalFilename());
				System.out.println("파일 크기: " + file[i].getSize());
				System.out.println("content type: " + file[i].getContentType());
				System.out.println("================== file   END ==================");

				InputStream is = file[i].getInputStream();
				String uploadKey = file[i].getOriginalFilename();
				String contentType = file[i].getContentType();
				long contentLength = file[i].getSize();

				String bucket = "bucketkurly/board_file";
				s3Service.upload(is, uploadKey, contentType, contentLength, bucket);
				String filePath = "https://bucketkurly.s3.ap-northeast-2.amazonaws.com/board_file/" + uploadKey;

				Board_fileVO filevo = new Board_fileVO();
				filevo.setBoard_file_qna_no(qnavo.getBoard_qna_no());
				filevo.setBoard_file_member_no(qnavo.getBoard_qna_member_no());
				filevo.setBoard_file_name(file[i].getOriginalFilename());
				filevo.setBoard_file_resource(filePath);

				board_qnaService.insertBoard_qnaFile(filevo);
			}
		}
		
		board_qnaService.insertBoard_qna(qnavo);
		return "redirect:/board_qna.do";
	}
	
}
