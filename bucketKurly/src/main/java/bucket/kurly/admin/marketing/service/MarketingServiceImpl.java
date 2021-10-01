package bucket.kurly.admin.marketing.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.admin.marketing.BannerVO;
import bucket.kurly.admin.marketing.CouponVO;
import bucket.kurly.admin.marketing.MarketingDAO;
import bucket.kurly.admin.marketing.Pagination;

@Service
public class MarketingServiceImpl implements MarketingService{

	@Autowired
	private MarketingDAO dao;
	
	
	/*========== 쿠폰 기능 시작 ==========*/
	
	
	//쿠폰리스트
	@Override
	public List<CouponVO> getCouponList() {
		return dao.getCouponList();
	}
	
	//쿠폰등록
	@Override
	public void insertCoupon(CouponVO vo) {
		dao.insertCoupon(vo);
		
	}

	//쿠폰 상세페이지
	@Override
	public CouponVO getCoupon(int coupon_no) {
		return dao.getCoupon(coupon_no);
	}
	
	//쿠폰 수정
	@Override
	public void updateCoupon(CouponVO vo) {
		dao.updateCoupon(vo);	
		
	}

	//쿠폰 삭제
	@Override
	public void deleteCoupon(CouponVO vo) {
		dao.deleteCoupon(vo);
		
	}

	
	/*========== 배너 기능 시작 ==========*/
	
	
	//배너리스트
	@Override
	public List<BannerVO> getBannerList(Pagination pagination) {
		return dao.getBannerList(pagination);
	}
	
	//배너 총 개수
	@Override
	public int countBanner() {
		return dao.countBanner();
	}
	
	//배너 상세페이지
	@Override
	public BannerVO getBanner(int banner_no) {
		return dao.getBanner(banner_no);
	}
	
	//배너등록
	@Override
	public void insertBanner(BannerVO vo) {
		dao.insertBanner(vo);		
	}
	
	//배너수정
	@Override
	public void updateBanner(BannerVO vo) {
		dao.updateBanner(vo);		
	}

	//배너삭제
	@Override
	public void deleteBanner(BannerVO vo) {
		dao.deleteBanner(vo);
	}

	

	

}
