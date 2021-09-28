package bucket.kurly.admin.category;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class Admin_Category_subDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	// 공지사항 조회
	//public List<> selectBoard_notice() {
	//}
	
}
