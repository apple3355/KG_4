package bucket.kurly.user.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.user.board.Board_noticeDAO;
import bucket.kurly.user.board.Board_reviewDAO;
import bucket.kurly.user.board.Board_reviewVO;

@Service
public class Board_reviewServiceImpl implements Board_reviewService {

	@Autowired
	private Board_reviewDAO dao;
	
	@Override
	public List<Board_reviewVO> selectBoard_review(String goods_sell_no) {
		return dao.selectBoard_review(goods_sell_no);
	}

}
