package bucket.kurly.admin.statistics.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.admin.statistics.Admin_StatisticsDAO;
import bucket.kurly.admin.statistics.Admin_StatisticsVO;

@Service
public class Admin_StatisticsServiceImpl implements Admin_StatisticsService {
	
	@Autowired
	Admin_StatisticsDAO dao;
	
	//회원등급별 회원수 구하기
	@Override
	public List<Admin_StatisticsVO> getMemberRank() {
		return dao.getMemberRank();
	}
	//일별매출
	@Override
	public List<Admin_StatisticsVO> getRevenue_daily() {
		return dao.getRevenue_daily();
	}
	//월별매출
	@Override
	public List<Admin_StatisticsVO> getRevenue_monthly() {
		return dao.getRevenue_monthly();
	}
	//인기품목
	@Override
	public List<Admin_StatisticsVO> getBestItem() {
		return dao.getBestItem();
	}
	@Override
	public int getRevenue_total() {
		return dao.getRevenue_total();
	}

	
	
}
