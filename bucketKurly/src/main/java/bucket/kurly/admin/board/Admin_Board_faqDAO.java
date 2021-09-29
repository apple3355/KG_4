package bucket.kurly.admin.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Admin_Board_faqDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	//게시글 목록 조회
	public List<Admin_Board_faqVO> selectBoard_faq() {
		System.out.println("Admin_Board_faqDAO - selectBoard_faq() 실행");
		return sqlSessionTemplate.selectList("board-mapping.admin_selectBoard_faq");
	}
	
	//게시글 상세페이지 조회
	public Admin_Board_faqVO selectBoard_faq_no(int faq_no) {
		System.out.println("Admin_Board_faqDAO - admin_selectBoard_faq_no() 실행");
		return sqlSessionTemplate.selectOne("board-mapping.admin_selectBoard_faq_no", faq_no);
	}
	
	//게시글 추가
	public void insertBoard_faq(Admin_Board_faqVO vo) {
		System.out.println("Admin_Board_faqDAO - admin_insertBoard_faq 실행");
		sqlSessionTemplate.insert("board-mapping.admin_insertBoard_faq", vo);
	}
	
	//게시글 수정
	public void updateBoard_faq_no(Admin_Board_faqVO vo) {
		System.out.println("Admin_Board_faqDAO - admin_updateBoard_faq_no 실행");
		sqlSessionTemplate.update("board-mapping.admin_updateBoard_faq_no", vo);
	}
	
	//게시글 삭제
	public void deleteBoard_faq_no(int faq_no) {
		System.out.println("Admin_Board_faqDAO - admin_deleteBoard_faq_no 실행");
		sqlSessionTemplate.delete("board-mapping.admin_deleteBoard_faq_no", faq_no);
	}

}

