package bucket.kurly.admin.board;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Admin_Board_reviewDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
}

