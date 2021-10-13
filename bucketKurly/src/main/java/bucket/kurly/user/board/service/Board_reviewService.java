package bucket.kurly.user.board.service;

import java.util.List;

import bucket.kurly.user.board.Board_reviewVO;

public interface Board_reviewService {

	List<Board_reviewVO> selectBoard_review(String goods_sell_no);

}
