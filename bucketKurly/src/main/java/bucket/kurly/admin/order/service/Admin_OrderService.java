package bucket.kurly.admin.order.service;

import java.util.List;

import bucket.kurly.admin.order.Admin_OrderVO;

public interface Admin_OrderService {
	
	//주문 목록 조회
	List<Admin_OrderVO> selectOrder();
	
	//주문 상태 수정
	void updateOrder(Admin_OrderVO vo);
}
