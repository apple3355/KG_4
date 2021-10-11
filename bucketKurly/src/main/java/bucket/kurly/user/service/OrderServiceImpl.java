package bucket.kurly.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.user.member.MemberVO;
import bucket.kurly.user.order.OrderDAO;
import bucket.kurly.user.order.OrderDetailsVO;
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
	public List<OrderVO> select_orderNo(int member_no) throws Exception {
		return dao.select_orderNo(member_no);
	}
	
	@Override
	public OrderVO orderNo(OrderVO vo) {
		return dao.orderNo(vo);
	}
	
	@Override
	public List<OrderVO> select_order_one(String order_no) throws Exception {
		return dao.select_order_one(order_no);
	}
	
	@Override
	public List<OrderVO> select_order(String order_no) throws Exception {
		return dao.select_order(order_no);
	}

	@Override
	public void insert_order(OrderVO vo) throws Exception {
		dao.insert_order(vo);
		
	}

	@Override
	public void insertOrderDetail(OrderDetailsVO vo) throws Exception {
		dao.insertOrderDetail(vo);
		
	}

	

	

	

	




}
