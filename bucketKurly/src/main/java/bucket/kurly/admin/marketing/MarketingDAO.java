package bucket.kurly.admin.marketing;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MarketingDAO {

	@Autowired
	SqlSessionTemplate sql;
	
	
	/*========== 쿠폰 기능 시작 ==========*/
	
	
	//쿠폰리스트
	public List<CouponVO> getCouponList(){
		return sql.selectList("MarketingDAO.getCouponList");
	}
	
	//쿠폰등록
	public void insertCoupon(CouponVO vo) {
		sql.insert("MarketingDAO.insertCoupon", vo);
	}
	
	//쿠폰 상세페이지
	public CouponVO getCoupon(int coupon_no) {
		System.out.println("getCoupon() 기능 처리");
		return sql.selectOne("MarketingDAO.getCoupon", coupon_no);
	}
	
	
	//배너수정
	public void updateCoupon(CouponVO vo) {
		System.out.println("updateCoupon() 기능 처리");
		sql.update("MarketingDAO.updateCoupon", vo);
	}
			
	//배너삭제
	public void deleteCoupon(CouponVO vo) {
		System.out.println("deleteCoupon() 기능 처리");
		sql.delete("MarketingDAO.deleteCoupon", vo);
	}
	
	
	/*========== 배너 기능 시작 ==========*/
	
	
	//배너리스트
	public List<BannerVO> getBannerList(Pagination pagination) {
		System.out.println("getBannerList() 기능 처리");
		return sql.selectList("MarketingDAO.getBannerList", pagination);
	}
	
	//배너 총 개수
	public int countBanner() {
		return sql.selectOne("MarketingDAO.countBanner");
	}
	
	//배너 상세페이지
	public BannerVO getBanner(int banner_no) {
		System.out.println("getBanner() 기능 처리");
		return sql.selectOne("MarketingDAO.getBanner", banner_no);
	}
	
	//배너등록
	public void insertBanner(BannerVO vo) {
		System.out.println("insertBanner() 기능 처리");
		sql.insert("MarketingDAO.insertBanner", vo);
	}
		
	//배너수정
	public void updateBanner(BannerVO vo) {
		System.out.println("updateBanner() 기능 처리");
		sql.update("MarketingDAO.updateBanner", vo);
	}
		
	//배너삭제
	public void deleteBanner(BannerVO vo) {
		System.out.println("deleteBanner() 기능 처리");
		sql.delete("MarketingDAO.deleteBanner", vo);
	}
	
	
}
