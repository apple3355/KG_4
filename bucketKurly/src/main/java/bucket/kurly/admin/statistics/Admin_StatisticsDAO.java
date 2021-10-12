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
	public List<Admin_StatisticsVO> getRevenue_daily(Admin_StatisticsVO vo){
		return sqlSessionTemplate.selectList("Admin_statisticsDAO.selectRevenueDaily",vo);
	}
	//월별매출
	public List<Admin_StatisticsVO> getRevenue_monthly(Admin_StatisticsVO vo){
		return sqlSessionTemplate.selectList("Admin_statisticsDAO.selectRevenueMonthly",vo);
	}
	//누척매출
	public int getRevenue_total(){
		return sqlSessionTemplate.selectOne("Admin_statisticsDAO.selectRevenueTotal");
	}
	//베스트 아이템
	public List<Admin_StatisticsBestVO> getBestItem(){
		return sqlSessionTemplate.selectList("Admin_statisticsDAO.selectBestItem");
	}
	
}
