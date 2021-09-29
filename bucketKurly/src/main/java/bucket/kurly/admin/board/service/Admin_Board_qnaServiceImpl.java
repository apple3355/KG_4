package bucket.kurly.admin.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.admin.board.Admin_Board_qnaDAO;


@Service
public class Admin_Board_qnaServiceImpl implements Admin_Board_qnaService {

	@Autowired
	private Admin_Board_qnaDAO dao;
	
}
	


