package bucket.kurly.user.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.user.board.Board_faqDAO;
import bucket.kurly.user.board.Board_faqVO;
import bucket.kurly.user.board.Board_noticeDAO;
import bucket.kurly.util.Pagination;


@Service
public class Board_faqServiceImpl implements Board_faqService {
	
	@Autowired
	private Board_faqDAO dao;
	
	
	@Override
	public List<Board_faqVO> selectBoard_faq(Pagination pagination) {
		return dao.selectBoard_faq(pagination);
	}

	@Override
	public Board_faqVO selectBoard_faq_no(int faq_no) {
		// TODO Auto-generated method stub
		return dao.selectBoard_faq_no(faq_no);
	}

	@Override
	public int selectBoard_faqListCnt() {
		// TODO Auto-generated method stub
		return dao.selectBoard_faqListCnt();
	}

}
