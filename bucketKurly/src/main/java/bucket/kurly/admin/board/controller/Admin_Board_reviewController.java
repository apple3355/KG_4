package bucket.kurly.admin.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import bucket.kurly.admin.board.Admin_Board_qnaVO;
import bucket.kurly.admin.board.service.Admin_Board_reviewService;


@Controller
public class Admin_Board_reviewController {
	
	@Autowired
	private Admin_Board_reviewService Admin_Board_reviewService;
	
}





