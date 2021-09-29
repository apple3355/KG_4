package bucket.kurly.admin.board.service;	

import java.util.List;

import bucket.kurly.admin.board.Admin_Board_noticeVO;


public interface Admin_Board_noticeService {
	
	//게시글 조회
	List<Admin_Board_noticeVO> selectBoard_notice();
	//게시글 상세보기
	Admin_Board_noticeVO selectBoard_notice_no(int notice_no);
	//게시글 추가하기
	void insertBoard_notice(Admin_Board_noticeVO vo);
	//게시글 수정하기
	void updateBoard_notice_no(Admin_Board_noticeVO vo);
	//게시글 삭제하기
	void deleteBoard_notice_no(int notice_no);
}