package bucket.kurly.admin.manager;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {

	@Autowired
	SqlSessionTemplate sql;
	
	//약관리스트 조회
	public List<AdminTermsVO> getTermsList() {	
		System.out.println("AdminDAO - getTermsList() 실행");				
		return sql.selectList("AdminDAO.getTermsList");	
	}
		
	//약관 상세페이지 조회
	public AdminTermsVO getTerms(int seq) {
		System.out.println("getTerms() 기능 처리");
		return sql.selectOne("AdminDAO.getTerms", seq);
	}

	//약관등록
	public void insertAdminTerms(AdminTermsVO vo) {
		System.out.println("AdminDAO - insertAdminTerms() 실행");
		sql.insert("AdminDAO.insertAdminTerms", vo);
	
	}
	
	//약관수정
	public void updateAdminTerms(AdminTermsVO vo) {
		System.out.println("AdminDAO - updateAdminTerms() 실행");
		sql.update("AdminDAO.updateAdminTerms", vo);
	}
	
	//약관삭제
	public void deleteAdminTerms(AdminTermsVO vo) {
		System.out.println("AdminDAO - deleteAdminTerms() 실행");
		sql.update("AdminDAO.deleteAdminTerms", vo);
	}
	
}