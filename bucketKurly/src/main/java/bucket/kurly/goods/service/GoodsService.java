package bucket.kurly.goods.service;

import java.util.List;

import bucket.kurly.goods.GoodsVO;


public interface GoodsService {
	
	
	//상품DB조회
	List<GoodsVO> selectGoods_list();
	//상품DB카운트
	String getGoods_cnt();
	
	//상품상세페이지
	List<GoodsVO> getGoods_list_detail();


}
