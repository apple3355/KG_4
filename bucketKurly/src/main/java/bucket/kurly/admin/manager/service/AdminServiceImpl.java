package bucket.kurly.admin.manager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.admin.manager.AdminDAO;
import bucket.kurly.admin.manager.AdminTermsVO;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDAO dao;
	
	//약관리스트 조회
	@Override
	public List<AdminTermsVO> getTermsList(){		
		return dao.getTermsList();
	}
	
	//약관 상세페이지 조회
	@Override
	public AdminTermsVO getTerms(int seq){
		return dao.getTerms(seq);
	}
	
	//약관등록
	@Override
	public void insertAdminTerms(AdminTermsVO vo){
		dao.insertAdminTerms(vo);
	
	}

	//약관수정
	@Override
	public void updateAdminTerms(AdminTermsVO vo){
		dao.updateAdminTerms(vo);
	}

	//약관삭제
	@Override
	public void deleteAdminTerms(AdminTermsVO vo){
		dao.deleteAdminTerms(vo);
	}


}
