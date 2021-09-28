package bucket.kurly.admin.manager.service;

import java.util.List;

import bucket.kurly.admin.manager.AdminTermsVO;

public interface AdminService {
	
	//약관리스트 조회
	List<AdminTermsVO> getTermsList();
			
	//약관 상세페이지 조회
	AdminTermsVO getTerms(int seq);
			
	//약관등록
	void insertAdminTerms(AdminTermsVO vo);
	
	//약관수정
	void updateAdminTerms(AdminTermsVO vo);
		
	//약관삭제
	void deleteAdminTerms(AdminTermsVO vo);
	
}
