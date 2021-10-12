package bucket.kurly.admin.statistics.service;

import java.util.List;

import bucket.kurly.admin.statistics.Admin_StatisticsBestVO;
import bucket.kurly.admin.statistics.Admin_StatisticsVO;

public interface Admin_StatisticsService {
	
	// 회원수 가져오기
	List<Admin_StatisticsVO> getMemberRank();

	// 일별매출 가져오기
	List<Admin_StatisticsVO> getRevenue_daily(Admin_StatisticsVO vo);

	// 월별매출 가져오기
	List<Admin_StatisticsVO> getRevenue_monthly(Admin_StatisticsVO vo);

	// 누적매출 가져오기
	int getRevenue_total();

	// 인기품목 가져오기
	List<Admin_StatisticsBestVO> getBestItem();
}