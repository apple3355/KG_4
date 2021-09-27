package bucket.kurly.admin.goods.service;

import java.util.List;

import bucket.kurly.admin.goods.Goods_adminSellVO;
import bucket.kurly.user.board.Board_noticeVO;

public interface Goods_aminService {

	//판매정보리스트
	List<Goods_adminSellVO> selectGoods_admin_list();
	
	//상품등록
	
	//상품수정
	void updateGoods(int goods_sell_no);
	//상품삭제
	void deleteGoods(int goods_sell_no);
	
}
