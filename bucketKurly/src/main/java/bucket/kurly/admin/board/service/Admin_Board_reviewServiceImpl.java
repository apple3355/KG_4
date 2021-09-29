package bucket.kurly.admin.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.admin.board.Admin_Board_reviewDAO;


@Service
public class Admin_Board_reviewServiceImpl implements Admin_Board_reviewService {

	@Autowired
	private Admin_Board_reviewDAO dao;
	
}


