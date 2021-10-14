package bucket.kurly.user.goods.service;

import java.util.List;

import bucket.kurly.user.goods.Goods_CartShowVO;
import bucket.kurly.user.goods.Goods_CartVO;
import bucket.kurly.user.goods.Goods_ListDTO;
import bucket.kurly.user.goods.Goods_SellVO;
import bucket.kurly.user.order.OrderShowVO;

public interface GoodsService {

	// 메인페이지 상품 조회
	List<Goods_SellVO> selectGoods_sell_main(String select_type);

	// 상품DB조회
	List<Goods_SellVO> selectGoods_sell(Goods_ListDTO dto);

	// 상품DB조회(parent_no)
	List<Goods_SellVO> selectGoods_sell_parent(Goods_ListDTO dto);

	int selectGoods_sell_parent_listCnt(String parent_no);

	String selectGoods_sell_parent_title(String parent_no);

	// 상품DB조회(parent_no)
	List<Goods_SellVO> selectGoods_sell_sub(Goods_ListDTO dto);

	int selectGoods_sell_sub_listCnt(String sub_no);

	String selectGoods_sell_sub_title(String sub_no);

	// 재고 조회
	public int select_goodsStock(int goods_sell_no);
	
	// 상품 검색
	List<Goods_SellVO> selectGoods_sell_search(Goods_ListDTO dto);

	int selectGoods_sell_search_listCnt(String search_keyword);

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

	// 결제 상품 정보
	List<OrderShowVO> orderGoods(String goods_cart_status);

	public List<Goods_CartVO> order_memberNo(int member_no);

	// 장바구니수량 수정
	void updateGoods_cart(Goods_CartVO gsvo);

	// 재고 수정
	public void updateSell_stock(Goods_SellVO gsvo);

	// 장바구니상태 수정
	void updateCart_status(int goods_cart_no);

	// 장바구니에서 삭제
	void deleteGoods_cart(Goods_CartVO gsvo);

	public Goods_CartVO select_goods_cart(int cart_no);

}
