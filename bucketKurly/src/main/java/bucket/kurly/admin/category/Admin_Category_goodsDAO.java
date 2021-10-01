package bucket.kurly.admin.category;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

<<<<<<< HEAD


=======
>>>>>>> 87d33aa55b5fbd2effd1031e09de81fa23d7ba38
@Repository
public class Admin_Category_goodsDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

<<<<<<< HEAD
	// 중위 카테고리에 해당하는 상품 카테고리 리스트
	public List<Admin_Category_goodsVO> selectCategory_goods_name(String category_goods_sub_no) {
		System.out.println("selectCategory_goods_name() 실행");
		return sqlSessionTemplate.selectList("category-mapping.selectCategory_goods_name", category_goods_sub_no);
	}
=======
	// 하위 카테고리 조회
	public List<Admin_Category_goodsVO> selectCategory_goods() {
		System.out.println("Admin_Category_goodsDAO - selectCategory_goods() 실행");
		return sqlSessionTemplate.selectList("category-mapping.selectCategory_goods");
	}

	// 하위 카테고리 상세페이지 조회
	public Admin_Category_goodsVO selectCategory_goods_no(String category_goods_no) {
		System.out.println("Admin_Category_goodsDAO - selectCategory_goods_no() 실행");
		return sqlSessionTemplate.selectOne("category-mapping.selectCategory_goods_no", category_goods_no);
	}

	// 하위 카테고리 삭제
	public void deleteCategory_goods(String category_goods_no) {
		System.out.println("Admin_Category_goodsDAO - deleteCategory_goods() 실행");
		sqlSessionTemplate.delete("category-mapping.deleteCategory_goods", category_goods_no);
	}

	// 하위 카테고리 수정
	public void updateCategory_goods(Admin_Category_goodsVO vo) {
		System.out.println("Admin_Category_goodsDAO - updateCategory_goods() 실행");
		sqlSessionTemplate.update("category-mapping.updateCategory_goods", vo);
	}

	// 하위 카테고리 등록
	public void insertCategory_goods(Admin_Category_goodsVO vo) {
		System.out.println("Admin_Category_goodsDAO - insertCategory_goods 실행");
		sqlSessionTemplate.insert("category-mapping.insertCategory_goods", vo);
	}

>>>>>>> 87d33aa55b5fbd2effd1031e09de81fa23d7ba38
}
