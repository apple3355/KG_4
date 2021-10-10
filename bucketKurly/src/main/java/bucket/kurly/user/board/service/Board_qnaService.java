package bucket.kurly.user.board.service;

import java.util.List;
import java.util.Map;

import bucket.kurly.user.board.Board_fileVO;
import bucket.kurly.user.board.Board_qnaVO;

public interface Board_qnaService {
	
	//글 번호로 vo 검색
	Board_qnaVO selectBoard_qna_no(int qna_no);
	
	//전체 게시글 검색(페이징)
	List<Board_qnaVO> selectBoard_qna(Map map);
	
	void insertBoard_qna(Board_qnaVO vo);
	void updateBoard_qna(Board_qnaVO vo);
	void deleteBoard_qna(Board_qnaVO vo);
	//마지막 글 번호 검색
	int selectBoard_qnaLastNo();
	
	//페이징 처리
	int selectBoard_qnaListCnt(int member_no);
	
	//파일
	void insertBoard_qnaFile(Board_fileVO vo);
	List<Board_fileVO> selectBoard_qnaFile(int member_no);
}
