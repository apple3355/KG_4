package bucket.kurly.admin.board.service;	

import java.util.List;

import bucket.kurly.admin.board.Admin_Board_noticeVO;
import bucket.kurly.user.board.Board_noticeVO;


public interface Admin_Board_noticeService {
	
	//글 조회
	List<Admin_Board_noticeVO> selectBoard_notice();
	//글 상세보기
	Admin_Board_noticeVO selectBoard_notice_no(int notice_no);
	//글 수정하기
	void updateBoard_notice_no(Board_noticeVO vo);
	//글 삭제하기
	void deleteBoard_notice_no(int notice_no);
}