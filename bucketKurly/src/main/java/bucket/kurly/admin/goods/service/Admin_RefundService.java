package bucket.kurly.admin.goods.service;

import java.util.List;

import bucket.kurly.admin.goods.Admin_RefundVO;

public interface Admin_RefundService {

	//환불 리스트
	List<Admin_RefundVO> selectRefund_list();
	
	//환불 상태 변경
	void updateRefund_state(int refund_no);
	
	//재고 수량 변경(up)
	void updateGoods_sell_stock_plus(String refund_order_no);
	
}
