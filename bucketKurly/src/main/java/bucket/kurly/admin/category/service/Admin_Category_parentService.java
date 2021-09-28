package bucket.kurly.admin.category.service;

import java.util.List;

import bucket.kurly.admin.category.Admin_Category_parentVO;

public interface Admin_Category_parentService {
	List<Admin_Category_parentVO> selectCategory_parent();
	void deleteCategory_parent(String category_parent_no);
}
