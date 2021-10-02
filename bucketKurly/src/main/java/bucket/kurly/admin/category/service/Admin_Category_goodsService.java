package bucket.kurly.admin.category.service;

import java.util.List;

import bucket.kurly.admin.category.Admin_Category_goodsVO;

public interface Admin_Category_goodsService {

	// 중위 카테고리에 해당하는 상품 카테고리 리스트
	List<Admin_Category_goodsVO> selectCategory_goods_name(String category_goods_sub_no);
}
