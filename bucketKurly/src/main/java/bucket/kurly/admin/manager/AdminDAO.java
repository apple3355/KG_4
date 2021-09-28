package bucket.kurly.admin.manager;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	// 회원 로그인
	public AdminVO login(String admin_id) throws Exception {
		return sqlSessionTemplate.selectOne("AdminDAO.login", admin_id);
	}

	// 약관리스트 조회
	public List<AdminTermsVO> getTermsList() {
		System.out.println("AdminDAO - getTermsList() 실행");
		return sqlSessionTemplate.selectList("AdminDAO.getTermsList");
	}

	// 약관 상세페이지 조회
	public AdminTermsVO getTerms(int seq) {
		System.out.println("getTerms() 기능 처리");
		return sqlSessionTemplate.selectOne("AdminDAO.getTerms", seq);
	}

	// 약관등록
	public void insertAdminTerms(AdminTermsVO vo) {
		System.out.println("AdminDAO - insertAdminTerms() 실행");
		sqlSessionTemplate.insert("AdminDAO.insertAdminTerms", vo);

	}

	// 약관수정
	public void updateAdminTerms(AdminTermsVO vo) {
		System.out.println("AdminDAO - updateAdminTerms() 실행");
		sqlSessionTemplate.update("AdminDAO.updateAdminTerms", vo);
	}

	// 약관삭제
	public void deleteAdminTerms(AdminTermsVO vo) {
		System.out.println("AdminDAO - deleteAdminTerms() 실행");
		sqlSessionTemplate.update("AdminDAO.deleteAdminTerms", vo);
	}

	// 관리자 등록
	public void insertAdmin(AdminVO vo) {
		System.out.println("AdminDAO - insertAdmin() 실행");
		sqlSessionTemplate.insert("AdminDAO.insertAdmin", vo);
	}

	// 관리자 목록
	public List<AdminVO> getAdminList() {
		System.out.println("AdminDAO - getAdminList() 실행");
		return sqlSessionTemplate.selectList("AdminDAO.adminList");
	}

	// 관리자 수정
	public void updateAdmin(AdminVO vo) {
		System.out.println("AdminDAO - updateAdmin() 실행");
		sqlSessionTemplate.update("AdminDAO.updateAdmin", vo);
	}

	// 관리자 삭제
	public void deleteAdmin(int admin_no) {
		System.out.println("AdminDAO - deleteAdmin() 실행");
		sqlSessionTemplate.update("AdminDAO.deleteAdmin", admin_no);
	}

}