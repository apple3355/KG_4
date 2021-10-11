package bucket.kurly.user.service;

import java.util.List;

import bucket.kurly.user.member.MemberVO;
import bucket.kurly.user.order.OrderDetailsVO;
import bucket.kurly.user.order.OrderVO;

public interface OrderService {
	
	public MemberVO order_form(String id) throws Exception;
	public List<OrderVO> select_orderNo(int member_no) throws Exception;
	public OrderVO orderNo(OrderVO vo);
	public List<OrderVO> select_order_one(String order_no) throws Exception;
	public List<OrderVO> select_order(String order_no) throws Exception;
	public void insert_order(OrderVO vo) throws Exception;
	public void insertOrderDetail(OrderDetailsVO vo) throws Exception;
	
}
