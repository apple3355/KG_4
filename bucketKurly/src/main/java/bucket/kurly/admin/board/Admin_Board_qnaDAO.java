package bucket.kurly.admin.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Admin_Board_qnaDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	//게시글 답변 대기 목록 조회 
	public List<Admin_Board_qnaVO> selectBoard_qna_answait() {
		System.out.println("Admin_Board_qnaDAO - selectBoard_qna_answait() 실행");
		return sqlSessionTemplate.selectList("board-mapping.admin_selectBoard_qna_answait");
	}
	
	//게시글 답변 완료 목록 조회
	public List<Admin_Board_qnaVO> selectBoard_qna_anscom() {
		System.out.println("Admin_Board_qnaDAO - selectBoard_qna_anscom() 실행");
		return sqlSessionTemplate.selectList("board-mapping.admin_selectBoard_qna_anscom");
	}
	
	//게시글 상세페이지 조회 - 질문 
	public Admin_Board_qnaVO selectBoard_qna_no(int qna_no) {
		System.out.println("Admin_Board_qnaDAO - selectBoard_qna_no() 실행");
		return sqlSessionTemplate.selectOne("board-mapping.admin_selectBoard_qna_no",qna_no);
	}
	
	//게시글 상세페이지 조회 - 답변
	public Admin_Board_qnaVO selectBoard_qna_no_answer(int qna_no) {
		System.out.println("Admin_Board_qnaDAO - selectBoard_qna_no_answer() 실행");
		return sqlSessionTemplate.selectOne("board-mapping.admin_selectBoard_qna_no_answer",qna_no);
	}
	
	//게시글 답변 추가
	public void insertBoard_qna_answer(Admin_Board_qnaVO vo) {
		System.out.println("Admin_Board_qnaDAO - insertBoard_qna_answer() 실행");
		sqlSessionTemplate.insert("board-mapping.admin_insertBoard_qna_answer",vo);
	}
	
	
}

