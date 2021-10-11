package bucket.kurly.user.order;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bucket.kurly.user.goods.Goods_CartVO;
import bucket.kurly.user.member.MemberVO;

@Repository
public class OrderDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public MemberVO order_form(String id) throws Exception {
		System.out.println("OrderDAO - order_form() 실행");
		return sqlSessionTemplate.selectOne("OrderDAO.order_form", id);
	}
	
	public OrderVO orderNo(OrderVO vo) {
		return sqlSessionTemplate.selectOne("OrderDAO.orderNo", vo);
	}
	
	public List<OrderVO> select_orderNo(int member_no) {
		return sqlSessionTemplate.selectList("OrderDAO.select_orderNo", member_no);
	}
	
	public List<OrderVO> select_order_one(String order_no) {
		return sqlSessionTemplate.selectList("OrderDAO.select_order_one", order_no);
	}
	
	public List<OrderVO> select_order(String order_no) {
		return sqlSessionTemplate.selectList("OrderDAO.select_order", order_no);
	}
	
	public void insert_order(OrderVO vo) throws Exception {
		System.out.println("OrderDAO - insert_order() 실행");
		sqlSessionTemplate.insert("OrderDAO.insertOrder", vo);
	}
	
	public void insertOrderDetail(OrderDetailsVO vo) throws Exception {
		System.out.println("OrderDAO - insertOrderDetail() 실행");
		sqlSessionTemplate.insert("OrderDAO.insertOrderDetail", vo);
	}
}
