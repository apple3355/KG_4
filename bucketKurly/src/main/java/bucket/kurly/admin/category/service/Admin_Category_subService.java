package bucket.kurly.admin.category.service;

import java.util.List;

import bucket.kurly.admin.category.Admin_Category_subVO;

public interface Admin_Category_subService {
	List<Admin_Category_subVO> selectCategory_sub();
	void deleteCategory_sub(String category_sub_no);
	void insertCategory_sub(Admin_Category_subVO vo);
	//상위 카테고리에 해당하는 중위 카테고리 리스트
	List<Admin_Category_subVO> selectCategory_sub_name(String category_sub_parent_no);
}
