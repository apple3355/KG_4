package bucket.kurly.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.goods.GoodsDAO;
import bucket.kurly.goods.GoodsVO;
import bucket.kurly.goods.Goods_SellVO;

@Service
public class GoodsServicImpl implements GoodsService {

	@Autowired
	private GoodsDAO dao;

	// 상품리스트
	@Override
	public List<GoodsVO> selectGoods_list() {
		return dao.selectGoods_list();
	}

	// 상품카운트
	@Override
	public String getGoods_cnt() {
		return dao.getGoods_cnt();
	}

	// 상품 상세페이지
	@Override
	public List<GoodsVO> getGoods_list_detail() {
		return dao.getGoods_list_detail();
	}

	// 상품 판매 정보
	@Override
	public Goods_SellVO getGoods_sell(Goods_SellVO gsvo) {
		return dao.getGoods_sell(gsvo);
	}

}
