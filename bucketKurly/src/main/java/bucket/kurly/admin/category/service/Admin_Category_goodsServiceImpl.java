package bucket.kurly.admin.category.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.admin.category.Admin_Category_goodsDAO;
import bucket.kurly.admin.category.Admin_Category_goodsVO;

@Service
public class Admin_Category_goodsServiceImpl implements Admin_Category_goodsService {
	
	@Autowired
	private Admin_Category_goodsDAO dao;	
	
	//카테고리 상품 조회
	@Override
	public List<Admin_Category_goodsVO> selectCategory_goods() {
		return dao.selectCategory_goods();
	}

	//카테고리 상품 상세
	@Override
	public Admin_Category_goodsVO selectCategory_goods_no(String category_goods_no) {
		return dao.selectCategory_goods_no(category_goods_no);
	}

	//카테고리 상품 삭제
	@Override
	public void deleteCategory_goods(String category_goods_no) {
		dao.deleteCategory_goods(category_goods_no);
	}

	//카테고리 상품 수정
	@Override
	public void updateCategory_goods(Admin_Category_goodsVO vo) {
		dao.updateCategory_goods(vo);
	}
	
	//카테고리 상품 등록
	@Override
	public void insertCategory_goods(Admin_Category_goodsVO vo) {
		dao.insertCategory_goods(vo);
	}
	
	//중위 카테고리
	@Override
	public List<Admin_Category_goodsVO> selectCategory_goods_name(String category_goods_sub_no) {
		return dao.selectCategory_goods_name(category_goods_sub_no);
	}
	
}
