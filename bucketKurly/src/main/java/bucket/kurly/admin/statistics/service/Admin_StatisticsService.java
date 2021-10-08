package bucket.kurly.admin.statistics.service;

import java.util.List;

import bucket.kurly.admin.statistics.Admin_StatisticsVO;

public interface Admin_StatisticsService {
	
	//회원수 가져오기
	List<Admin_StatisticsVO> getMemberRank();
}
