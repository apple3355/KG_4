package bucket.kurly.admin.goods;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Admin_RefundDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//환불 리스트
	public List<Admin_RefundVO> selectRefund_list() {
		System.out.println("RefundDAO - selectRefund_list() 실행");
		return sqlSessionTemplate.selectList("RefundDAO.admin_selectRefund_list");
	}
	
	//환불 상태 변경
	public void updateRefund_state(int refund_no) {
		System.out.println("RefundDAO - updateRefund_state() 실행");
		sqlSessionTemplate.update("RefundDAO.updateRefund_state",refund_no);
	}
	
	//재고 수량 변경
	public void updateGoods_sell_stock_plus(String refund_order_no) {
		System.out.println("RefundDAO - updateGoods_sell_stock_plus() 실행");
		sqlSessionTemplate.update("RefundDAO.updateGoods_sell_stock_plus",refund_order_no);
	}

}


