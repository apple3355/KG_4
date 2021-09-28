package bucket.kurly.admin.category.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.admin.category.Admin_Category_parentDAO;
import bucket.kurly.admin.category.Admin_Category_parentVO;

@Service
public class Admin_Category_parentServiceImpl implements Admin_Category_parentService {

	@Autowired
	private Admin_Category_parentDAO dao;

	@Override
	public List<Admin_Category_parentVO> selectCategory_parent() {
		return dao.selectCategory_parent();
	}

	@Override
	public void deleteCategory_parent(String category_parent_no) {
		dao.deleteCategory_parent(category_parent_no);
	}

	@Override
	public void insertCategory_parent(Admin_Category_parentVO vo) {
		dao.insertCategory_parent(vo);		
	}
}
