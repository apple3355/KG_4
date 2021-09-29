package bucket.kurly.admin.board.service;

import java.util.List;

import bucket.kurly.admin.board.Admin_Board_faqVO;

public interface Admin_Board_faqService {
	//게시글 조회
	List<Admin_Board_faqVO> selectBoard_faq();
	//게시글 상세보기
	Admin_Board_faqVO selectBoard_faq_no(int faq_no);
	//게시글 추가하기
	void insertBoard_faq(Admin_Board_faqVO vo);
	//게시글 수정하기
	void updateBoard_faq_no(Admin_Board_faqVO vo);
	//게시글 삭제하기
	void deleteBoard_faq_no(int faq_no);
}
