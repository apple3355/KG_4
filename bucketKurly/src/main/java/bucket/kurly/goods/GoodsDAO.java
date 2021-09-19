package bucket.kurly.goods;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GoodsDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//상품 DB 리스트
	public List<GoodsVO> selectGoods_list() {
		System.out.println("GoosDAO - selectGoods_list() 실행");
		return sqlSessionTemplate.selectList("GoodsDAO.selectGoods_list");
	}
	

	//상품 상세페이지(상품정보)
	


}
