package bucket.kurly.user.order;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bucket.kurly.user.member.MemberVO;

@Repository
public class OrderDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public MemberVO order_form(String id) throws Exception {
		System.out.println("OrderDAO - order_form() 실행");
		return sqlSessionTemplate.selectOne("OrderDAO.order_form", id);
	}
	
	public void insert_order(OrderVO vo) throws Exception {
		System.out.println("OrderDAO - insert_order() 실행");
		sqlSessionTemplate.insert("OrderDAO.insertOrder", vo);
	}
}
