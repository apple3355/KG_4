package bucket.kurly.admin.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.admin.board.Admin_Board_faqDAO;
import bucket.kurly.admin.board.Admin_Board_faqVO;


@Service
public class Admin_Board_faqServiceImpl implements Admin_Board_faqService {

	@Autowired
	private Admin_Board_faqDAO dao;

	@Override
	public List<Admin_Board_faqVO> selectBoard_faq() {
		return dao.selectBoard_faq();
	}

	@Override
	public Admin_Board_faqVO selectBoard_faq_no(int faq_no) {
		return dao.selectBoard_faq_no(faq_no);
	}

	@Override
	public void insertBoard_faq(Admin_Board_faqVO vo) {
		dao.insertBoard_faq(vo);
	}

	@Override
	public void updateBoard_faq_no(Admin_Board_faqVO vo) {
		dao.updateBoard_faq_no(vo);
	}

	@Override
	public void deleteBoard_faq_no(int faq_no) {
		dao.deleteBoard_faq_no(faq_no);
	}
	
}


