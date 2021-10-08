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
	
	@Override
	public List<Admin_StatisticsVO> getMemberRank() {
		return dao.getMemberRank();
	}
	
}
