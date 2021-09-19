package bucket.kurly.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bucket.kurly.util.Pagination;

@Repository
public class Board_qnaDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<Board_qnaVO> selectBoard_qna(Pagination pagination) {
		System.out.println("Board_qnaDAO - selectBoard_qna() 실행");
	 	return sqlSessionTemplate.selectList("board-mapping.selectBoard_qna",pagination); 
	}
	
	public void insertBoard_qna(Board_qnaVO vo) {
		 System.out.println("Board_qnaDAO - selectBoard_qna() 실행");
		 sqlSessionTemplate.insert("board-mapping.insertBoard_qna",vo); 
	}
	
	public int selectBoard_qnaListCnt(){
		return sqlSessionTemplate.selectOne("board-mapping.selectBoard_qnaListCnt");
	}

}
