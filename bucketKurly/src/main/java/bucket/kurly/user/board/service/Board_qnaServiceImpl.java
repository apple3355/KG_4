package bucket.kurly.user.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.user.board.Board_fileDAO;
import bucket.kurly.user.board.Board_fileVO;
import bucket.kurly.user.board.Board_qnaDAO;
import bucket.kurly.user.board.Board_qnaVO;
@Service
public class Board_qnaServiceImpl implements Board_qnaService {
	
	@Autowired
	private Board_qnaDAO qnaDao;
	@Autowired
	private Board_fileDAO fileDao;
	
	
	@Override
	public Board_qnaVO selectBoard_qna_no(int qna_no) {
		return qnaDao.selectBoard_qna_no(qna_no);
	}
	
	@Override
	public List<Board_qnaVO> selectBoard_qna(Map map) {
		return qnaDao.selectBoard_qna(map);
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
	public int selectBoard_qnaListCnt(int member_no) {
		return qnaDao.selectBoard_qnaListCnt(member_no);
	}

	
	@Override
	public int selectBoard_qnaLastNo() {
		return qnaDao.selectBoard_qnaLastNo();
	}
	
	
	@Override
	public void insertBoard_qnaFile(Board_fileVO vo) {
		fileDao.insertBoard_qnaFile(vo);
	}

	@Override
	public List<Board_fileVO> selectBoard_qnaFile(int member_no) {
		return fileDao.selectBoard_qnaFile(member_no);
	}


	
}

