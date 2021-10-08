package bucket.kurly.admin.statistics;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Admin_StatisticsDAO {
	
	@Autowired 
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<Admin_StatisticsVO> getMemberRank() {
		return sqlSessionTemplate.selectList("Admin_statisticsDAO.selectMemberRank");
	}
	
}
