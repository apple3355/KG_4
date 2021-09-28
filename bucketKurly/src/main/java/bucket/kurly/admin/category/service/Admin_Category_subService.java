package bucket.kurly.admin.category.service;

import java.util.List;

import bucket.kurly.admin.category.Admin_Category_subVO;

public interface Admin_Category_subService {
	List<Admin_Category_subVO> selectCategory_sub();
	void deleteCategory_sub(String category_sub_no);
	void insertCategory_sub(Admin_Category_subVO vo);
}
