package bucket.kurly.admin.category;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class Admin_Category_parentDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	// 상위 카테고리 조회 
	public List<Admin_Category_parentVO> selectCategory_parent() {
		 System.out.println("Admin_Category_parentDAO - selectCategory_parent() 실행" );
		 return sqlSessionTemplate.selectList("category-mapping.selectCategory_parent"); 
	}
	
	// 상위 카테고리 삭제
	public void deleteCategory_parent(String category_parent_no) {
		 System.out.println("Admin_Category_parentDAO - deleteCategory_parent 실행");
		 sqlSessionTemplate.delete("category-mapping.deleteCategory_parent",category_parent_no);
	}

	
}
