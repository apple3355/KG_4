package bucket.kurly.user.board;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Board_fileDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void insertBoard_qnaFile(Board_fileVO vo) {
		 System.out.println("Board_fileDAO - insertBoard_qnaFile() 실행");
		 sqlSessionTemplate.insert("board-mapping.insertBoard_qnaFile",vo); 
	}
	
	public List<Board_fileVO> selectBoard_qnaFile(int member_no) {
		System.out.println("Board_fileDAO - selectBoard_qnaFile() 실행");
	 	return sqlSessionTemplate.selectList("board-mapping.selectBoard_qnaFile",member_no); 
	}
	
	
}

