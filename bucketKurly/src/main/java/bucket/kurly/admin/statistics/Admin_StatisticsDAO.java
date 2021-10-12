package bucket.kurly.admin.statistics;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Admin_StatisticsDAO {
	
	@Autowired 
	SqlSessionTemplate sqlSessionTemplate;
	
	//등급별 회원수
	public List<Admin_StatisticsVO> getMemberRank() {
		return sqlSessionTemplate.selectList("Admin_statisticsDAO.selectMemberRank");
	}
	//일별매출
	public List<Admin_StatisticsVO> getRevenue_daily(){
		return sqlSessionTemplate.selectList("Admin_statisticsDAO.selectRevenueDaily");
	}
	//월별매출
	public List<Admin_StatisticsVO> getRevenue_monthly(){
		return sqlSessionTemplate.selectList("Admin_statisticsDAO.selectRevenueMonthly");
	}
	//누척매출
		public int getRevenue_total(){
			return sqlSessionTemplate.selectOne("Admin_statisticsDAO.selectRevenueTotal");
		}
	//베스트 아이템
	public List<Admin_StatisticsVO> getBestItem(){
		return sqlSessionTemplate.selectList("Admin_statisticsDAO.selectBestItem");
	}
	
}
