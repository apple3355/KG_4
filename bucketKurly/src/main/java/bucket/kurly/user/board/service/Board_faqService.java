package bucket.kurly.user.board.service;

import java.util.List;

import bucket.kurly.user.board.Board_faqVO;
import bucket.kurly.util.Pagination;

public interface Board_faqService {

	//글 조회
	List<Board_faqVO> selectBoard_faq(Pagination pagination);
	//글 상세보기
	Board_faqVO selectBoard_faq_no(int num);
	
	//페이징 처리
	int selectBoard_faqListCnt();

}
