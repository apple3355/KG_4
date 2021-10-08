package bucket.kurly.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.user.member.MemberVO;
import bucket.kurly.user.order.OrderDAO;
import bucket.kurly.user.order.OrderVO;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderDAO dao;

	@Override
	public MemberVO order_form(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.order_form(id);
	}

	@Override
	public void insert_order(OrderVO vo) throws Exception {
		dao.insert_order(vo);
		
	}




}
