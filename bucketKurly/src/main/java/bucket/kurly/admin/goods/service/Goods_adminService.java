package bucket.kurly.admin.goods.service;

import java.util.List;

import bucket.kurly.admin.goods.Goods_adminSellVO;

public interface Goods_adminService {

	//판매정보리스트
	List<Goods_adminSellVO> selectGoods_admin_list();
	
	//상품판매 리스트 등록
	void insertGoods(Goods_adminSellVO vo);
	//상품판매 리스트 수정
	void updateGoods(Goods_adminSellVO vo);
	//상품 리스트 삭제
	void deleteGoods(int goods_sell_no);
	
}
