package bucket.kurly.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bucket.kurly.util.Pagination;

@Repository
public class Board_noticeDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;


	// 공지사항 조회
	public List<Board_noticeVO> selectBoard_notice(Pagination pagination) {
		System.out.println("Board_noticeDAO - selectBoard_notice() 실행");
		return sqlSessionTemplate.selectList("board-mapping.selectBoard_notice", pagination);
		// list 타입 vo를 받아옴, board_notice_mappings.selectBoard_notice 매핑즈 폴더내에 있는 이름
	}
	
	//게시글 상세페이지
	public Board_noticeVO select_notice_no(int num) {
		System.out.println("DAO 실행");
		return sqlSessionTemplate.selectOne("board-mapping.select_notice_no", num);
		//sqlSessionTemplate 쿼리문을 수행해주는 역할\
		//selectOne - id에 대한 select문을 실행한 후 한개의 레코드를 지정한 타입으로 반환합니다.
	}
	//조회수 증가
	public int select_notice_cnt(int num) {
		System.out.println("조회수 증가");
		return sqlSessionTemplate.update("board-mapping.select_notice_cnt", num);
	}
	
	//공지사항 페이징
	public int getnotice_cnt() {
		System.out.println("게시글 DB수");
		return sqlSessionTemplate.selectOne("board-mapping.getnotice_cnt");
	}
	
	//이전 글
	public Board_noticeVO getPrev(int num){
		return sqlSessionTemplate.selectOne("board-mapping.getPrev", num);
	}
		// 다음 글 
	public Board_noticeVO getNext(int num){
		return sqlSessionTemplate.selectOne("board-mapping.getNext", num);
	}
	
	
	
//	
//	//게시글 검색
//	public int search_notice(String searchType, String keyword) {
//		System.out.println("게시글 검색");
//		return sqlSessionTemplate.selectOne("board_notice_mappings.getnotice_cnt");
//	}

	
}



