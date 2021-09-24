package bucket.kurly.user.goods.service;

import java.util.List;

import bucket.kurly.user.goods.GoodsVO;
import bucket.kurly.user.goods.Goods_SellVO;


public interface GoodsService {
	
	
	//상품DB조회
	List<GoodsVO> selectGoods_list();
	//상품DB카운트
	String getGoods_cnt();
	
	//상품상세페이지
	List<GoodsVO> getGoods_list_detail();
	
	//상품 판매 정보
	Goods_SellVO getGoods_sell(Goods_SellVO gsvo);

}
