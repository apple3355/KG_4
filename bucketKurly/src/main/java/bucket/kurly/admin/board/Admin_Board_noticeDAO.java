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

	//게시글 목록 조회
	public List<Admin_Board_noticeVO> selectBoard_notice() {
		System.out.println("Admin_Board_noticeDAO - selectBoard_notice() 실행");
		return sqlSessionTemplate.selectList("board-mapping.admin_selectBoard_notice");
	}
	
	//게시글 상세페이지 조회
	public Admin_Board_noticeVO selectBoard_notice_no(int notice_no) {
		System.out.println("Admin_Board_noticeDAO - admin_selectBoard_notice_no() 실행");
		return sqlSessionTemplate.selectOne("board-mapping.admin_selectBoard_notice_no", notice_no);
	}
	
	//게시글 추가
	public void insertBoard_notice(Admin_Board_noticeVO vo) {
		System.out.println("Admin_Board_noticeDAO - admin_insertBoard_notice 실행");
		sqlSessionTemplate.insert("board-mapping.admin_insertBoard_notice", vo);
	}
	
	//게시글 수정
	public void updateBoard_notice_no(Admin_Board_noticeVO vo) {
		System.out.println("Admin_Board_noticeDAO - admin_updateBoard_notice_no 실행");
		sqlSessionTemplate.update("board-mapping.admin_updateBoard_notice_no", vo);
	}
	
	//게시글 삭제
	public void deleteBoard_notice_no(int notice_no) {
		System.out.println("Admin_Board_noticeDAO - admin_deleteBoard_notice_no 실행");
		sqlSessionTemplate.delete("board-mapping.admin_deleteBoard_notice_no", notice_no);
	}

	
}
