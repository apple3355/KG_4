package bucket.kurly.user.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.user.board.Board_noticeDAO;
import bucket.kurly.user.board.Board_noticeVO;
import bucket.kurly.util.Pagination;


@Service
public class Board_noticeServiceImpl implements Board_noticeService {

//	 private static final Board_noticeVO vo = null;
	 
	@Autowired
	private Board_noticeDAO dao;
	
	//게시물 목록
	@Override
	public List<Board_noticeVO> selectBoard_notice(Pagination pagination) {
		return dao.selectBoard_notice(pagination);
	}
	
	//게시물 상세보기
	@Override
	public Board_noticeVO select_notice_no(int num) { //no = num
		return dao.select_notice_no(num);
	}
	
	//조회수 증가
	@Override
	public int select_notice_cnt(int num) {
		return dao.select_notice_cnt(num);
	}
	
	//DB전체 게시글 
	@Override
	public int getnotice_cnt() {
		return dao.getnotice_cnt();
	}
	
	//이전글
	@Override
	public Board_noticeVO getPrev(int num) {
		return dao.getPrev(num);
	}
	
	//다음글
	@Override
	public Board_noticeVO getNext(int num) {
		return dao.getNext(num);
	}
	
	
	

	
}


