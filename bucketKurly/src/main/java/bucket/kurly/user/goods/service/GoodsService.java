package bucket.kurly.user.goods.service;

import java.util.List;

import bucket.kurly.user.goods.GoodsVO;
import bucket.kurly.user.goods.Goods_CartShowVO;
import bucket.kurly.user.goods.Goods_CartVO;
import bucket.kurly.user.goods.Goods_SellVO;

public interface GoodsService {

	// 상품DB조회
	List<Goods_SellVO> selectGoods_sell(String select_type);

	// 상품상세페이지
	Goods_SellVO getGoods_detail(int goods_sell_no);
	
	
	// 상품DB카운트
	String getGoods_cnt();
	
	// 상품 판매 정보
	Goods_SellVO getGoods_sell(Goods_SellVO gsvo);
	
	
	// 장바구니 테이블 개수 조회
	Integer countGoods_cart(Goods_CartVO gcvo);
	
	// 장바구니에 담기
	void insertGoods_cart(Goods_CartVO gcvo);

	// 장바구니 정보
	List<Goods_CartShowVO> getGoods_cart(int goods_cart_member_no);
	
	// 선택한 장바구니 정보
	List<Goods_CartShowVO> chooseGoods_cart(int goods_cart_no);
	
	// 장바구니수량 수정
	void updateGoods_cart(Goods_CartVO gsvo);
	
	// 장바구니상태 수정
	void updateCart_status(Goods_CartVO gsvo);
	
	// 장바구니에서 삭제
	void deleteGoods_cart(Goods_CartVO gsvo);

}
