package bucket.kurly.admin.goods;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Goods_adminDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
		
	//상품리스트
	public List<Goods_adminSellVO> selectGoods_admin_list() {
		System.out.println("GoodsDAO - selectGoods_admin_list() 실행");
		return sqlSessionTemplate.selectList("GoodsDAO.selectGoods_admin_list");
	}
	
	//상품등록
	public void insertGoods(Goods_adminSellVO vo) {
		System.out.println("GoodsDAO - insertGoods() 실행");
		sqlSessionTemplate.insert("GoodsDAO.insertGoods", vo); 
	}
	
	
	//상품수정
	public void updateGoods(Goods_adminSellVO vo) {
		System.out.println("Goods_adminDAO - updateGoods_admin 실행");
		sqlSessionTemplate.update("GoodsDAO.updateGoods_admin", vo);
	}
	
	
	//상품리스트 삭제
	public void deleteGoods(int goods_sell_no) {
		System.out.println("Goods_adminDAO - selectGoods_delete() 실행");
		sqlSessionTemplate.selectOne("GoodsDAO.selectGoods_delete", goods_sell_no);
	}
	
	
}
