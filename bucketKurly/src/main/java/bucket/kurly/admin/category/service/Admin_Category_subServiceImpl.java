package bucket.kurly.admin.category.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.admin.category.Admin_Category_subDAO;
import bucket.kurly.admin.category.Admin_Category_subVO;

@Service
public class Admin_Category_subServiceImpl implements Admin_Category_subService{

	@Autowired
	private Admin_Category_subDAO dao;
		
	@Override
	public List<Admin_Category_subVO> selectCategory_sub() {
		return dao.selectCategory_sub();
	}

	@Override
	public void deleteCategory_sub(String category_sub_no) {
		dao.deleteCategory_sub(category_sub_no);
	}

	@Override
	public void insertCategory_sub(Admin_Category_subVO vo) {
		dao.insertCategory_sub(vo);
	}

	//상위 카테고리에 해당하는 중위 카테고리 리스트
	@Override
	public List<Admin_Category_subVO> selectCategory_sub_name(String category_sub_parent_no) {
		return dao.selectCategory_sub_name(category_sub_parent_no);
	}

}
