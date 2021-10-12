package bucket.kurly.user.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.user.goods.GoodsDAO;
import bucket.kurly.user.goods.Goods_CartShowVO;
import bucket.kurly.user.goods.Goods_CartVO;
import bucket.kurly.user.goods.Goods_ListDTO;
import bucket.kurly.user.goods.Goods_SellVO;
import bucket.kurly.user.order.OrderShowVO;

@Service
public class GoodsServiceImpl implements GoodsService {

	@Autowired
	private GoodsDAO dao;

	// 메인페이지 상품
	@Override
	public List<Goods_SellVO> selectGoods_sell_main(String select_type) {
		return dao.selectGoods_sell_main(select_type);
	}
	
	// 상품리스트
	@Override
	public List<Goods_SellVO> selectGoods_sell(Goods_ListDTO dto) {
		return dao.selectGoods_sell(dto);
	}
	

	// 상품리스트(parent_no)
	@Override
	public List<Goods_SellVO> selectGoods_sell_parent(Goods_ListDTO dto) {
		return dao.selectGoods_sell_parent(dto);
	}
	@Override
	public int selectGoods_sell_parent_listCnt(String parent_no) {
		return dao.selectGoods_sell_parent_listCnt(parent_no);
	}
	@Override
	public String selectGoods_sell_parent_title(String parent_no) {
		return dao.selectGoods_sell_parent_title(parent_no);
	}
	
	
	// 상품리스트(sub_no)
	@Override
	public List<Goods_SellVO> selectGoods_sell_sub(Goods_ListDTO dto) {
		return dao.selectGoods_sell_sub(dto);
	}
	@Override
	public int selectGoods_sell_sub_listCnt(String sub_no) {
		return dao.selectGoods_sell_sub_listCnt(sub_no);
	}
	@Override
	public String selectGoods_sell_sub_title(String sub_no) {
		return dao.selectGoods_sell_sub_title(sub_no);
	}
	
	//재고 조회
	@Override
	public int select_goodsStock(int goods_sell_no) {
		return dao.select_goodsStock(goods_sell_no);
	}
	
	
	// 상품 검색
	@Override
	public List<Goods_SellVO> selectGoods_sell_search(Goods_ListDTO dto) {
		return dao.selectGoods_sell_search(dto);
	}

	@Override
	public int selectGoods_sell_search_listCnt(String search_keyword) {
		return dao.selectGoods_sell_search_listCnt(search_keyword);
	}
	

	
	// 상품 상세페이지
	@Override
	public Goods_SellVO getGoods_detail(int goods_sell_no) {
		// TODO Auto-generated method stub
		return dao.getGoods_detail(goods_sell_no);
	}
	
	// 상품카운트
	@Override
	public String getGoods_cnt() {
		return dao.getGoods_cnt();
	}


	// 상품 판매 정보
	@Override
	public Goods_SellVO getGoods_sell(Goods_SellVO gsvo) {
		return dao.getGoods_sell(gsvo);
	}
	
	// 장바구니 테이블 개수 조회 
	@Override
	public Integer countGoods_cart(Goods_CartVO gcvo) {
		return dao.countGoods_cart(gcvo);
	}
	
	// 장바구니에 담기
	@Override
	public void insertGoods_cart(Goods_CartVO gcvo) {
		dao.insertGoods_cart(gcvo);
	}

	// 장바구니 정보
	@Override
	public List<Goods_CartShowVO> getGoods_cart(int goods_cart_member_no) {
		return dao.getGoods_cart(goods_cart_member_no);
	}
	
	// 선택한 장바구니 정보
	@Override
	public List<Goods_CartShowVO> chooseGoods_cart(int goods_cart_no) {
		return dao.chooseGoods_cart(goods_cart_no);
	}
	
	// 결제 상품 정보
	@Override
	public List<OrderShowVO> orderGoods(String order_no) {
		return dao.orderGoods(order_no);
	}
	
	//장바구니 수정
	@Override
	public void updateGoods_cart(Goods_CartVO gsvo) {
		dao.updateGoods_cart(gsvo);
					
	}
	
	//재고 수정
	@Override
	public void updateSell_stock(Goods_SellVO gsvo) {
		dao.updateSell_stock(gsvo);
		
	}
	
	//장바구니 상태수정
	@Override
	public void updateCart_status(Goods_CartVO gsvo) {
		dao.updateCart_status(gsvo);
		
	}
	
	//장바구니 삭제
	@Override
	public void deleteGoods_cart(Goods_CartVO gsvo) {
		dao.deleteGoods_cart(gsvo);
	}

	@Override
	public List<Goods_CartVO> order_memberNo(int member_no) {
		return dao.order_memberNo(member_no);
	}

	@Override
	public Goods_CartVO select_goods_cart(int cart_no) {
		return dao.select_goods_cart(cart_no);
	}

	

	

	
	
}
