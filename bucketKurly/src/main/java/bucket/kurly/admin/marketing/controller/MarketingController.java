package bucket.kurly.admin.marketing.controller;

import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.postgresql.util.PSQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import bucket.kurly.admin.marketing.BannerVO;
import bucket.kurly.admin.marketing.CouponVO;
import bucket.kurly.admin.marketing.Pagination;
import bucket.kurly.admin.marketing.service.MarketingService;
import bucket.kurly.util.S3Service;

@Controller
public class MarketingController {

	@Autowired
	private MarketingService marketingService;
	private S3Service s3Service = S3Service.getInstance();
	
	
	
	

	/*========== 쿠폰 기능 시작 ==========*/
	
	//쿠폰목록 요청
	@RequestMapping("/admin_coupon_getList.mdo")
	public String getCouponList(Model model) {

		System.out.println("쿠폰리스트 요청 처리");

		List<CouponVO> couponList = marketingService.getCouponList();
		model.addAttribute("coupon", couponList);

		return "/marketing/admin_coupon_getList";
	}
	
	
	//쿠폰 등록화면
	@RequestMapping("/admin_coupon_insert.mdo")
	public String insertCouponView(Model model) throws IOException {
		List<CouponVO> couponList = marketingService.getCouponList();
		model.addAttribute("couponList", couponList);
			
		return "/marketing/admin_coupon_insert";
	}

	
	//쿠폰 등록기능 (DB 업로드)
	@RequestMapping("/insertCoupon.mdo")
	public String insertCoupon(CouponVO vo, MultipartFile file,
		@RequestParam("start") String start, @RequestParam("end") String end,
		@RequestParam("coupon_discount") String coupon_discount, @RequestParam("coupon_limit") String coupon_limit) throws ParseException, IOException {

		int discnt = Integer.parseInt(coupon_discount); //할인금액 (5, 10, 15, 20% 또는 3000 무료배송, 10000)
		int limit = Integer.parseInt(coupon_limit);    //쿠폰 사용제한 금액(0, 10000,30000)
		
		Date regd = new SimpleDateFormat("yyyy-MM-dd").parse(start); //시작일
		Date endd = new SimpleDateFormat("yyyy-MM-dd").parse(end);   //만료일

		
		// aws s3 파일 업로드 처리 
		InputStream is = file.getInputStream();
		String uploadKey = file.getOriginalFilename();
		String contentType = file.getContentType();
		long contentLength = file.getSize();
				
		String bucket = "bucketkurly/coupon"; 
				
		s3Service.upload(is, uploadKey, contentType, contentLength, bucket);
		String filePath = "https://bucketkurly.s3.ap-northeast-2.amazonaws.com/coupon/" + uploadKey;
		vo.setCoupon_filepath(filePath);	
		
		vo.setCoupon_discount(discnt); //할인금액
		vo.setCoupon_limit(limit); //쿠폰사용 제한 금액
		vo.setCoupon_regdate(regd); //시작일
		vo.setCoupon_enddate(endd); //만료일

		System.out.println(vo.toString());
		marketingService.insertCoupon(vo);

			return "redirect:/admin_coupon_getList.mdo";
		}
	
	
	//쿠폰 상세페이지
	@RequestMapping("/admin_coupon_get.mdo")
	public String getCoupon(CouponVO vo, @RequestParam(value="no") int coupon_no, Model model) {
		
		CouponVO coupon = marketingService.getCoupon(coupon_no);
		model.addAttribute("coupon", coupon);
		
		return "/marketing/admin_coupon_get";
	}
	
	
	//쿠폰 수정 
	@RequestMapping("/updateCoupon.mdo")
	public String updateCoupon(CouponVO vo, MultipartFile file, @RequestParam(value="no") int coupon_no,
			@RequestParam("start") String start, @RequestParam("end") String end,
			@RequestParam("coupon_discount") String coupon_discount, 
			@RequestParam("coupon_limit") String coupon_limit) throws PSQLException, IOException, ParseException {
				
		CouponVO data = marketingService.getCoupon(coupon_no);
		System.out.println("data : " + data);		
		
		
		int discnt = Integer.parseInt(coupon_discount); //할인금액 (5, 10, 15, 20% 또는 3000 무료배송, 10000)
		int limit = Integer.parseInt(coupon_limit);    //쿠폰 사용제한 금액(0, 10000,30000)
		data.setCoupon_discount(discnt);
		data.setCoupon_limit(limit);
		
		Date regd = new SimpleDateFormat("yyyy-MM-dd").parse(start); //시작일
		Date endd = new SimpleDateFormat("yyyy-MM-dd").parse(end);   //만료일
		data.setCoupon_regdate(regd); 
		data.setCoupon_enddate(endd); 
		
		
		//S3 이미지 수정
		int index = data.getCoupon_filepath().indexOf("/", 20);  
		String key = data.getCoupon_filepath().substring(index+1); 
			
		if(!file.getOriginalFilename().equals("")) {
			if(!key.equals("coupon/" + file)) {
				s3Service.delete(key);
					
				InputStream is = file.getInputStream();
				String uploadKey = file.getOriginalFilename();
				String contentType = file.getContentType();
				long contentLength = file.getSize();
					
				String bucket = "bucketkurly/coupon";				
				s3Service.upload(is, uploadKey, contentType, contentLength, bucket);				
				String filePath = "https://bucketkurly.s3.ap-northeast-2.amazonaws.com/coupon/" + uploadKey;
					
				data.setCoupon_filepath(filePath);
			}else {
				data.setCoupon_filepath(data.getCoupon_filepath());
				}
		}else {
			data.setCoupon_filepath(data.getCoupon_filepath());
		}
		
		//기타 String type data 수정		
		data.setCoupon_code(vo.getCoupon_code());
		data.setCoupon_name(vo.getCoupon_name());
		data.setCoupon_status(vo.getCoupon_status());
		data.setCoupon_type(vo.getCoupon_type());		
		data.setCoupon_regway(vo.getCoupon_regway());
			
		//System.out.println("data : " + data);	
		marketingService.updateCoupon(data);
			
		return "redirect:/admin_coupon_getList.mdo";
	}

	
	
	//쿠폰삭제 
	@RequestMapping("/deleteCoupon.mdo")
	public String deleteCoupon(CouponVO vo, @RequestParam(value="no") int coupon_no) throws IOException, PSQLException{
			
		CouponVO data = marketingService.getCoupon(coupon_no);	
			
		int index = data.getCoupon_filepath().indexOf("/", 20);
		String key = data.getCoupon_filepath().substring(index+1);
		s3Service.delete(key);
			
		marketingService.deleteCoupon(data);
			
		return "redirect:/admin_coupon_getList.mdo";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*========== 배너 기능 시작 ==========*/
	
	
	//배너리스트 
	@RequestMapping("/admin_banner_getList.mdo")
	public String getBannerList(BannerVO vo, Model model,
		@RequestParam(required = false, defaultValue = "1") int page,
		@RequestParam(required = false, defaultValue = "1") int range) {
			
		int countBanner = marketingService.countBanner(); //배너 개수 조회

		/* Pagination */
		Pagination pagination = new Pagination();
		pagination.PageInfoEvent(page, range, countBanner);

		List<BannerVO> pageList = marketingService.getBannerList(pagination);
			
		model.addAttribute("pagination", pagination);
		model.addAttribute("banner", pageList);
			
		return "marketing/admin_banner_getList";
	}
		
	
	//배너 상세페이지
	@RequestMapping("/admin_banner_get.mdo")
	public String getBanner(BannerVO vo, @RequestParam(value="no") int banner_no, Model model) {
		
		//System.out.println(seq);
		BannerVO banner = marketingService.getBanner(banner_no);
		model.addAttribute("banner", banner);
		
		return "marketing/admin_banner_get";
	}


	//배너 등록 
	@RequestMapping("/admin_banner_insert.mdo") //배너 리스트에서 배너등록 버튼 클릭 시 이동
	public String insertBanner() {
		return "marketing/admin_banner_insert";
	}
	
	@RequestMapping("/bannerUpload.mdo") //배너 등록화면에서 DB로 업로드
	public String bannerUpload(BannerVO vo, MultipartFile file) throws IOException, PSQLException, IllegalStateException {
		// aws s3 파일 업로드 처리 
		InputStream is = file.getInputStream();
		String uploadKey = file.getOriginalFilename();
		String contentType = file.getContentType();
		long contentLength = file.getSize();
		
		String bucket = "bucketkurly/banner"; 
		
		s3Service.upload(is, uploadKey, contentType, contentLength, bucket);
		String filePath = "https://bucketkurly.s3.ap-northeast-2.amazonaws.com/banner/" + uploadKey;
		vo.setBanner_filepath(filePath);
		
		marketingService.insertBanner(vo);
		
		return "redirect:/admin_banner_getList.mdo";
	}

	
	//배너 수정 
	@RequestMapping("/updateBanner.mdo")
	public String updateBanner(BannerVO vo, MultipartFile file, @RequestParam(value="no") int banner_no) throws PSQLException, IOException {
			
		BannerVO data = marketingService.getBanner(banner_no);
		//System.out.println("data" + data);		
		
		int index = data.getBanner_filepath().indexOf("/", 20); // filepath의 20번 인덱스부터 /를 찾고 그 인덱스 리턴
		String key = data.getBanner_filepath().substring(index+1); //index로 넘어온 수에 1 더한 값으로 문자열 자르고 String 리턴
		
		if(!file.getOriginalFilename().equals("")) {
			if(!key.equals("banner/" + file)) {
				s3Service.delete(key);
				
				InputStream is = file.getInputStream();
				String uploadKey = file.getOriginalFilename();
				String contentType = file.getContentType();
				long contentLength = file.getSize();
				
				String bucket = "bucketkurly/banner";				
				s3Service.upload(is, uploadKey, contentType, contentLength, bucket);				
				String filePath = "https://bucketkurly.s3.ap-northeast-2.amazonaws.com/banner/" + uploadKey;
				
				data.setBanner_filepath(filePath);
			}else {
				data.setBanner_filepath(data.getBanner_filepath());
			}
		}else {
			data.setBanner_filepath(data.getBanner_filepath());
		}
		data.setBanner_title(vo.getBanner_title());
		data.setBanner_contents(vo.getBanner_contents());
		marketingService.updateBanner(data);
		
		return "redirect:/admin_banner_getList.mdo";
	}

	
	//배너삭제 
	@RequestMapping("/deleteBanner.mdo")
	public String deleteBanner(BannerVO vo, @RequestParam(value="no") int banner_no) throws IOException, PSQLException{
		
		BannerVO data = marketingService.getBanner(banner_no);
		//System.out.println("data: " + data);	
		
		int index = data.getBanner_filepath().indexOf("/", 20);
		String key = data.getBanner_filepath().substring(index+1);
		s3Service.delete(key);
		
		marketingService.deleteBanner(data);
		
		return "redirect:/admin_banner_getList.mdo";
	}
	
	
	

}
