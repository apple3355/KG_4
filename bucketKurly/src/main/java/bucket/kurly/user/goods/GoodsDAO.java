package bucket.kurly.user.goods;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GoodsDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	// 상품 DB 리스트
	public List<Goods_SellVO> selectGoods_sell(String select_type) {
		System.out.println("GoosDAO - selectGoods_sell() 실행");
		return sqlSessionTemplate.selectList("GoodsDAO.selectGoods_sell",select_type);
	}

	// 상품 상세페이지(상품정보)
	public Goods_SellVO getGoods_detail(int goods_sell_no) {
		 System.out.println("GoosDAO - getGoods_detail() 실행");
		return sqlSessionTemplate.selectOne("GoodsDAO.getGoods_detail",goods_sell_no);
	}
	
	
	// 상품 DB 카운트
	public String getGoods_cnt() {
		System.out.println("게시글 DB수");
		return sqlSessionTemplate.selectOne("GoodsDAO.getGoods_cnt");
	}

	
	// 상품 판매 정보
	public Goods_SellVO getGoods_sell(Goods_SellVO gsvo) {
		System.out.println("판매 정보");
		return sqlSessionTemplate.selectOne("GoodsDAO.getGoods_sell", gsvo);
	}
	
	// 장바구니 테이블 개수 조회
	public Integer countGoods_cart(Goods_CartVO gcvo) {
		System.out.println("countGoods_cart () 실행");
		return sqlSessionTemplate.selectOne("GoodsDAO.countGoods_cart",gcvo);
		
	}
	
	// 장바구니에 담기
	public void insertGoods_cart(Goods_CartVO gcvo) {
		System.out.println("insertGoods_cart() 실행");
		sqlSessionTemplate.insert("GoodsDAO.insertGoods_cart",gcvo);
	}
	
	// 장바구니 불러오기
	public List<Goods_CartShowVO> getGoods_cart(int goods_cart_member_no){
		System.out.println("getGoods_cart() 실행");
		return sqlSessionTemplate.selectList("GoodsDAO.getGoods_cart",goods_cart_member_no);
	}
	

	// 장바구니 삭제
	public void deleteGoods_cart(Goods_CartVO gsvo){
		sqlSessionTemplate.delete("GoodsDAO.deleteGoods_cart",gsvo);
	}


	/*
	 * //공지사항 페이징 public int getnotice_cnt() { System.out.println("게시글 DB수"); return
	 * sqlSessionTemplate.selectOne("board-mapping.getnotice_cnt"); }
	 */
}
