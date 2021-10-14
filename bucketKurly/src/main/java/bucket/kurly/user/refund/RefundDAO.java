package bucket.kurly.user.refund;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RefundDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void insert_refund(RefundVO vo) throws Exception {
		System.out.println("RefundDAO - insert_refund() 실행");
		sqlSessionTemplate.insert("RefundDAO.insertRefund", vo);
	}
	
	public void updateOrder_state(String order_no) throws Exception {
		System.out.println("RefundDAO - updateOrder_state() 실행");
		sqlSessionTemplate.update("RefundDAO.updateOrder_state", order_no);
	}
	
}
