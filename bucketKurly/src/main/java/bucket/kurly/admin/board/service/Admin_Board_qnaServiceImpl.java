package bucket.kurly.admin.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.admin.board.Admin_Board_qnaDAO;
import bucket.kurly.admin.board.Admin_Board_qnaVO;


@Service
public class Admin_Board_qnaServiceImpl implements Admin_Board_qnaService {

	@Autowired
	private Admin_Board_qnaDAO dao;

	@Override
	public List<Admin_Board_qnaVO> selectBoard_qna_answait() {
		return dao.selectBoard_qna_answait();
	}

	@Override
	public List<Admin_Board_qnaVO> selectBoard_qna_anscom() {
		return dao.selectBoard_qna_anscom();
	}

	@Override
	public Admin_Board_qnaVO selectBoard_qna_no(int qna_no) {
		return dao.selectBoard_qna_no(qna_no);
	}

	@Override
	public Admin_Board_qnaVO selectBoard_qna_no_answer(int qna_no) {
		return dao.selectBoard_qna_no_answer(qna_no);
	}

	@Override
	public void insertBoard_qna_answer(Admin_Board_qnaVO vo) {
		dao.insertBoard_qna_answer(vo);
	}
	
}
	


