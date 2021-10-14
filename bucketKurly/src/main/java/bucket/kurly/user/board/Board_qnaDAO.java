package bucket.kurly.user.board;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bucket.kurly.user.member.MemberVO;


@Repository
public class Board_qnaDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public Board_qnaVO selectBoard_qna_no(int qna_no) {
		System.out.println("Board_qnaDAO - selectBoard_qna_no() 실행");
	 	return sqlSessionTemplate.selectOne("board-mapping.selectBoard_qna_no",qna_no); 
	}
	
	public List<Board_qnaVO> selectBoard_qna(Map map) {
		System.out.println("Board_qnaDAO - selectBoard_qna() 실행");
	 	return sqlSessionTemplate.selectList("board-mapping.selectBoard_qna",map); 
	}
	
	public void insertBoard_qna(Board_qnaVO vo) {
		 System.out.println("Board_qnaDAO - selectBoard_qna() 실행");
		 sqlSessionTemplate.insert("board-mapping.insertBoard_qna",vo); 
	}
	
	public int selectBoard_qnaListCnt(int member_no){
		return sqlSessionTemplate.selectOne("board-mapping.selectBoard_qnaListCnt",member_no);
	}
	
	
	public int selectBoard_qnaLastNo() {
		 System.out.println("Board_qnaDAO - selectBoard_qnaLastNo() 실행");
		 return sqlSessionTemplate.selectOne("board-mapping.selectBoard_qnaLastNo"); 
	}
	
	public MemberVO selectBoard_memberinfo(String member_id){
		return sqlSessionTemplate.selectOne("board-mapping.selectBoard_memberinfo",member_id);
	}
	
}
