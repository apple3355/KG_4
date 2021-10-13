package bucket.kurly.user.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Board_reviewDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<Board_reviewVO> selectBoard_review(String goods_sell_no) {
		System.out.println("Board_reviewDAO - selectBoard_review() 실행");
	 	return sqlSessionTemplate.selectList("board-mapping.selectBoard_review",goods_sell_no); 
	}
}
