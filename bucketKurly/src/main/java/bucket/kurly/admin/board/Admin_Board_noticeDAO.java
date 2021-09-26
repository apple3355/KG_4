package bucket.kurly.admin.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bucket.kurly.user.board.Board_noticeVO;

@Repository
public class Admin_Board_noticeDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	// 공지사항 조회
	public List<Admin_Board_noticeVO> selectBoard_notice() {
		System.out.println("Admin_Board_noticeDAO - selectBoard_notice() 실행");
		return sqlSessionTemplate.selectList("board-mapping.admin_selectBoard_notice");
	}
	
	//게시글 상세페이지
	public Admin_Board_noticeVO selectBoard_notice_no(int notice_no) {
		System.out.println("Admin_Board_noticeDAO - admin_selectBoard_notice_no() 실행");
		return sqlSessionTemplate.selectOne("board-mapping.admin_selectBoard_notice_no", notice_no);
	}
	
	//게시글 수정하기
	public void updateBoard_notice_no(Board_noticeVO vo) {
		System.out.println("Admin_Board_noticeDAO - admin_updateBoard_notice_no 실행");
		sqlSessionTemplate.selectOne("board-mapping.admin_updateBoard_notice_no", vo);
	}
	
	//게시글 삭제하기
	public void deleteBoard_notice_no(int notice_no) {
		System.out.println("Admin_Board_noticeDAO - admin_deleteBoard_notice_no 실행");
		sqlSessionTemplate.selectOne("board-mapping.admin_deleteBoard_notice_no", notice_no);
	}

	
}
