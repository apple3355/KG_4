package bucket.kurly.admin.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.admin.board.Admin_Board_noticeDAO;
import bucket.kurly.admin.board.Admin_Board_noticeVO;
import bucket.kurly.user.board.Board_noticeVO;


@Service
public class Admin_Board_noticeServiceImpl implements Admin_Board_noticeService {


	@Autowired
	private Admin_Board_noticeDAO dao;
	
	@Override
	public List<Admin_Board_noticeVO> selectBoard_notice() {
		return dao.selectBoard_notice();
	}

	@Override
	public Admin_Board_noticeVO selectBoard_notice_no(int notice_no) {
		return dao.selectBoard_notice_no(notice_no);
	}

	@Override
	public void updateBoard_notice_no(Board_noticeVO vo) {
		dao.updateBoard_notice_no(vo);
	}

	@Override
	public void deleteBoard_notice_no(int notice_no) {
		dao.deleteBoard_notice_no(notice_no);
	}
	
	
	

	
}


