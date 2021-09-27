package bucket.kurly.user.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.user.goods.GoodsDAO;
import bucket.kurly.user.goods.Goods_CartShowVO;
import bucket.kurly.user.goods.Goods_CartVO;
import bucket.kurly.user.goods.Goods_SellVO;

@Service
public class GoodsServicImpl implements GoodsService {

	@Autowired
	private GoodsDAO dao;

	// 상품리스트
	@Override
	public List<Goods_SellVO> selectGoods_sell(String select_type) {
		return dao.selectGoods_sell(select_type);
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



}
