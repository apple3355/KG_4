package bucket.kurly.board.service;

import java.util.List;

import bucket.kurly.board.Board_fileVO;
import bucket.kurly.board.Board_qnaVO;
import bucket.kurly.util.Pagination;

public interface Board_qnaService {
	
	//글
	List<Board_qnaVO> selectBoard_qna(Pagination pagination);
	void insertBoard_qna(Board_qnaVO vo);
	void updateBoard_qna(Board_qnaVO vo);
	void deleteBoard_qna(Board_qnaVO vo);
	
	//페이징 처리
	int selectBoard_qnaListCnt();
	
	//파일
	void insertBoard_qnaFile(Board_fileVO vo);
}
