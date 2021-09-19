package bucket.kurly.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.goods.GoodsDAO;
import bucket.kurly.goods.GoodsVO;

@Service
public class GoodsServicImpl implements GoodsService {
	
	

	@Autowired
	private GoodsDAO dao;

	@Override
	public List<GoodsVO> selectGoods_list() {
		return dao.selectGoods_list();
	}


 


}
