package bucket.kurly.admin.category;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class Admin_Category_subDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<Admin_Category_subVO> selectCategory_sub() {
		 System.out.println("Admin_Category_subDAO - selectCategory_sub() 실행" );
		 return sqlSessionTemplate.selectList("category-mapping.selectCategory_sub"); 
	}

	public void deleteCategory_sub(String category_sub_no) {
		 System.out.println("Admin_Category_subDAO - deleteCategory_sub 실행");
		 sqlSessionTemplate.delete("category-mapping.deleteCategory_sub",category_sub_no);
		
	}

	public void insertCategory_sub(Admin_Category_subVO vo) {
		 System.out.println("Admin_Category_subDAO - insertCategory_sub 실행");
		 sqlSessionTemplate.delete("category-mapping.insertCategory_sub",vo);
	}



}
