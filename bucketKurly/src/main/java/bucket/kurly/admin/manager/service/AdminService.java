package bucket.kurly.admin.manager.service;

import java.util.List;

import bucket.kurly.admin.manager.AdminTermsVO;
import bucket.kurly.admin.manager.AdminVO;

public interface AdminService {

	// 로그인
	public AdminVO login(String admin_id) throws Exception;

	// 약관리스트 조회
	List<AdminTermsVO> getTermsList();

	// 약관 상세페이지 조회
	AdminTermsVO getTerms(int seq);

	// 약관등록
	void insertAdminTerms(AdminTermsVO vo);

	// 약관수정
	void updateAdminTerms(AdminTermsVO vo);

	// 약관삭제
	void deleteAdminTerms(AdminTermsVO vo);

	// 관리자 등록
	public void insertAdmin(AdminVO vo);

	// 관리자 목록
	public List<AdminVO> getAdminList();

	// 관리자 수정목록
	public void updateAdmin(AdminVO vo);

	// 관리자 삭제
	public void deleteAdmin(int admin_no);
}
