package bucket.kurly.admin.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.admin.goods.Admin_RefundDAO;
import bucket.kurly.admin.goods.Admin_RefundVO;

@Service
public class Admin_RefundServiceImpl implements Admin_RefundService {
	
	@Autowired
	private Admin_RefundDAO dao;

	@Override
	public List<Admin_RefundVO> selectRefund_list() {
		return dao.selectRefund_list();
	}

	@Override
	public void updateRefund_state(int refund_no) {
		dao.updateRefund_state(refund_no);
	}

	@Override
	public void updateGoods_sell_stock_plus(String refund_order_no) {
		dao.updateGoods_sell_stock_plus(refund_order_no);
	}

}
