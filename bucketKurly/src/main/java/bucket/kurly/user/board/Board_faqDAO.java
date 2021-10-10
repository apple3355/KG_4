package bucket.kurly.user.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bucket.kurly.util.Pagination;


@Repository
public class Board_faqDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<Board_faqVO> selectBoard_faq(Pagination pagination) {
		 System.out.println("Board_faqDAO - selectBoard_faq() 실행");
		 return sqlSessionTemplate.selectList("board-mapping.selectBoard_faq",pagination); 
	}
	
	public Board_faqVO selectBoard_faq_no(int faq_no) {
		System.out.println("Board_faqDAO - selectBoard_faq_no() 실행");
	 	return sqlSessionTemplate.selectOne("board-mapping.selectBoard_faq_no",faq_no); 
	}

	public int selectBoard_faqListCnt() {
		return sqlSessionTemplate.selectOne("board-mapping.selectBoard_faqListCnt") ;
	}
	
}
