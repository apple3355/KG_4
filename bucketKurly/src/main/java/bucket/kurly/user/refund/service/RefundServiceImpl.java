package bucket.kurly.user.refund.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.user.refund.RefundDAO;
import bucket.kurly.user.refund.RefundVO;

@Service
public class RefundServiceImpl implements RefundService{


	@Autowired
	private RefundDAO dao;
	
	@Override
	public void insert_refund(RefundVO vo) throws Exception {
		dao.insert_refund(vo);
		
	}

	@Override
	public void updateOrder_state(String order_no) throws Exception {
		dao.updateOrder_state(order_no);
	}
}
