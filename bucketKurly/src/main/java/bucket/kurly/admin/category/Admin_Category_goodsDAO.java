package bucket.kurly.admin.category;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Admin_Category_goodsDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	// 중위 카테고리에 해당하는 상품 카테고리 리스트
	public List<Admin_Category_goodsVO> selectCategory_goods_name(String category_goods_sub_no) {
		System.out.println("selectCategory_goods_name() 실행");
		return sqlSessionTemplate.selectList("category-mapping.selectCategory_goods_name", category_goods_sub_no);
	}
}
