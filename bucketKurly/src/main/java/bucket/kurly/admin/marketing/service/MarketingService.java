package bucket.kurly.admin.marketing.service;

import java.util.List;

import bucket.kurly.admin.marketing.BannerVO;
import bucket.kurly.admin.marketing.CouponVO;
import bucket.kurly.admin.marketing.Pagination;

public interface MarketingService {
	
	
	
	/*========== 쿠폰 기능 시작 ==========*/
	
	//쿠폰리스트
	List<CouponVO> getCouponList();
	
	//쿠폰 상세페이지
	CouponVO getCoupon(int coupon_no);
	
	//쿠폰등록
	void insertCoupon(CouponVO vo);

	void updateCoupon(CouponVO vo);

	void deleteCoupon(CouponVO vo);
	
	

	
	
	
	
	/*========== 배너 기능 시작 ==========*/
	
	
	//배너리스트
	List<BannerVO> getBannerList(Pagination pagination);
	
	//배너 총 개수 
	int countBanner();
	
	//배너 상세페이지
	BannerVO getBanner(int banner_no);
	
	//배너등록
	void insertBanner(BannerVO vo);
	
	//배너수정
	void updateBanner(BannerVO vo);
	
	//배너삭제
	void deleteBanner(BannerVO vo);
}
