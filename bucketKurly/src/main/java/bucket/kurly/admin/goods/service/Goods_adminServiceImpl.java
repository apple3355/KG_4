package bucket.kurly.admin.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.admin.goods.Goods_adminDAO;
import bucket.kurly.admin.goods.Goods_adminSellVO;

@Service
public class Goods_adminServiceImpl implements Goods_adminService {

	@Autowired
	private Goods_adminDAO admindao;
	
	//상품판매리스트
	@Override
	public List<Goods_adminSellVO> selectGoods_admin_list() {
		return admindao.selectGoods_admin_list();
	}
	
	//상품판매등록
	@Override
	public void insertGoods(Goods_adminSellVO vo) {
		admindao.insertGoods(vo);
		
	}
	
	//상품판매수정	
	@Override
	public void updateGoods(Goods_adminSellVO vo) {
		admindao.updateGoods(vo);
	}

	
	//상품판매삭제
	@Override
	public void deleteGoods(int goods_sell_no) {
		admindao.deleteGoods(goods_sell_no);
		
	}

	

	



}
