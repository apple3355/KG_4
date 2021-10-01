package bucket.kurly.admin.category.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.admin.category.Admin_Category_goodsDAO;
import bucket.kurly.admin.category.Admin_Category_goodsVO;


@Service
public class Admin_Category_goodsServiceimpl implements Admin_Category_goodsService {

	@Autowired
	private Admin_Category_goodsDAO dao;
	
	@Override
	public List<Admin_Category_goodsVO> selectCategory_goods_name(String category_goods_sub_no) {
		return dao.selectCategory_goods_name(category_goods_sub_no);
	}

}
