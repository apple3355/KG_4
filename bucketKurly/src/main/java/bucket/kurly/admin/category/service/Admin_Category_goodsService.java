package bucket.kurly.admin.category.service;

import java.util.List;

import bucket.kurly.admin.category.Admin_Category_goodsVO;


public interface Admin_Category_goodsService {
	
	// 중위 카테고리에 해당하는 상품 카테고리 리스트
//	List<Admin_Category_goodsVO> selectCategory_goods_name(String category_goods_sub_no);
	
	
	//카테고리 상품 조회
	List<Admin_Category_goodsVO> selectCategory_goods();
	//카테고리 상품 상세
	Admin_Category_goodsVO selectCategory_goods_no(String category_goods_no);
	//카테고리 상품 삭제
	void deleteCategory_goods(String category_goods_no);
	//카테고리 상품 수정
	void updateCategory_goods(Admin_Category_goodsVO vo);
	//카테고리 상품 등록
	void insertCategory_goods(Admin_Category_goodsVO vo);
	
}
