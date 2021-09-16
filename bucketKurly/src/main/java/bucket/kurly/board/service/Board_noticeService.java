package bucket.kurly.board.service;	

import java.util.List;

import bucket.kurly.board.Board_noticeVO;
import bucket.kurly.util.Pagination;

public interface Board_noticeService {
	
	//글조회
	List<Board_noticeVO> selectBoard_notice(Pagination pagination);
	//글상세보기
	Board_noticeVO select_notice_no(int num);
	//글조회수증가
	int select_notice_cnt(int num);
	//페이징
	int getnotice_cnt();
	
	//이전 글
	Board_noticeVO getPrev(int num);
	//다음 글
	Board_noticeVO getNext(int num);

	
	
	//게시글 검색
//	int search_notice(String searchType, String keyword) throws Exception;
	
}