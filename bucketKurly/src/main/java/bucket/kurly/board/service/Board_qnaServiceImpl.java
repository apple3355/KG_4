package bucket.kurly.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.board.Board_fileDAO;
import bucket.kurly.board.Board_fileVO;
import bucket.kurly.board.Board_qnaDAO;
import bucket.kurly.board.Board_qnaVO;
import bucket.kurly.util.Pagination;

@Service
public class Board_qnaServiceImpl implements Board_qnaService {
	
	@Autowired
	private Board_qnaDAO qnaDao;
	@Autowired
	private Board_fileDAO fileDao;
	
	@Override
	public List<Board_qnaVO> selectBoard_qna(Pagination pagination) {
		return qnaDao.selectBoard_qna(pagination);
	}

	@Override
	public void insertBoard_qna(Board_qnaVO vo) {
		qnaDao.insertBoard_qna(vo);
	}

	@Override
	public void updateBoard_qna(Board_qnaVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBoard_qna(Board_qnaVO vo) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public int selectBoard_qnaListCnt() {
		return qnaDao.selectBoard_qnaListCnt();
	}

	@Override
	public void insertBoard_qnaFile(Board_fileVO vo) {
		fileDao.insertBoard_qnaFile(vo);
	}
	
}

