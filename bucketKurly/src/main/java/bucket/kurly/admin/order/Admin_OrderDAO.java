package bucket.kurly.admin.order;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class Admin_OrderDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//주문 목록 조회
	public List<Admin_OrderVO> selectOrder() {
		System.out.println("Admin_OrderDAO - selectOrder() 실행");
		return sqlSessionTemplate.selectList("OrderDAO.admin_selectOrder");
	}
	
	//주문 상태 수정
	public void updateOrder(Admin_OrderVO vo) {
		System.out.println("Admin_OrderDAO - updateOrder() 실행");
		sqlSessionTemplate.update("OrderDAO.admin_updateOrder",vo);
	}

}

