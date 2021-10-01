package bucket.kurly.admin.board.service;

import java.util.List;

import bucket.kurly.admin.board.Admin_Board_qnaVO;

public interface Admin_Board_qnaService {

	//게시글 답변 대기 목록 조회 
	List<Admin_Board_qnaVO> selectBoard_qna_answait();
	
	//게시글 답변 완료 목록 조회
	List<Admin_Board_qnaVO> selectBoard_qna_anscom();
	
	//게시글 상세페이지 조회 - 질문
	Admin_Board_qnaVO selectBoard_qna_no(int qna_no);
	
	//게시글 상세페이지 조회 - 답변
	Admin_Board_qnaVO selectBoard_qna_no_answer(int qna_no);
	
	//게시글 답변 추가
	void insertBoard_qna_answer(Admin_Board_qnaVO vo);
	
}
