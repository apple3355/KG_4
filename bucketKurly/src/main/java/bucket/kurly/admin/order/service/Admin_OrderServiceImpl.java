package bucket.kurly.admin.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.admin.order.Admin_OrderDAO;
import bucket.kurly.admin.order.Admin_OrderVO;

@Service
public class Admin_OrderServiceImpl implements Admin_OrderService {

	
	@Autowired
	private Admin_OrderDAO dao;
	
	@Override
	public List<Admin_OrderVO> selectOrder() {
		return dao.selectOrder();
	}

	@Override
	public void updateOrder(Admin_OrderVO vo) {
		dao.updateOrder(vo);
	}

}
