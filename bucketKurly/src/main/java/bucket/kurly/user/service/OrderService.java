package bucket.kurly.user.service;

import bucket.kurly.user.member.MemberVO;
import bucket.kurly.user.order.OrderVO;

public interface OrderService {
	
	public MemberVO order_form(String id) throws Exception;
	public void insert_order(OrderVO vo) throws Exception;
	
}
