package bucket.kurly.admin.marketing;

import java.util.Date;

/* 
테이블(09/29)
CREATE TABLE TB_COUPON(
    coupon_no serial PRIMARY KEY NOT NULL,
    coupon_code VARCHAR(30) NOT NULL, 
    coupon_name VARCHAR(100) NOT NULL, 
    coupon_filepath VARCHAR(300), 
    coupon_status VARCHAR(20) NOT NULL,
    coupon_type VARCHAR(20) NOT NULL,
    coupon_limit INTEGER NOT NULL,
    coupon_discount INTEGER NOT NULL,
    coupon_regway VARCHAR(20) NOT NULL,
    coupon_regdate DATE,
    coupon_enddate DATE
);

 */


public class CouponVO {

	private Integer coupon_no;  //(seq)
	private String coupon_code; //쿠폰 코드 (코드로 사용자가 등록 시)
	private String coupon_name; //쿠폰명
	private String coupon_filepath; //쿠폰이미지
	private String coupon_status; //발급여부 (발급중,발급중단) 
	private String coupon_type; //쿠폰기능(무료배송, 할인쿠폰, 생일쿠폰 등)
	private Integer coupon_limit; //사용조건: 특정금액 이하 사용제한
	private Integer coupon_discount; //할인금액, 할인율 (금액할인, 퍼센테이지 할인)
	private String coupon_regway; //쿠폰등록 방식(자동등록, 수동등록)
	private Date coupon_regdate; //쿠폰 시작일
	private Date coupon_enddate; //쿠폰 만료일
	
	public Integer getCoupon_no() {
		return coupon_no;
	}
	public void setCoupon_no(Integer coupon_no) {
		this.coupon_no = coupon_no;
	}
	public String getCoupon_code() {
		return coupon_code;
	}
	public void setCoupon_code(String coupon_code) {
		this.coupon_code = coupon_code;
	}
	public String getCoupon_name() {
		return coupon_name;
	}
	public void setCoupon_name(String coupon_name) {
		this.coupon_name = coupon_name;
	}
	public String getCoupon_filepath() {
		return coupon_filepath;
	}
	public void setCoupon_filepath(String coupon_filepath) {
		this.coupon_filepath = coupon_filepath;
	}
	public String getCoupon_status() {
		return coupon_status;
	}
	public void setCoupon_status(String coupon_status) {
		this.coupon_status = coupon_status;
	}
	public String getCoupon_type() {
		return coupon_type;
	}
	public void setCoupon_type(String coupon_type) {
		this.coupon_type = coupon_type;
	}
	public Integer getCoupon_limit() {
		return coupon_limit;
	}
	public void setCoupon_limit(Integer coupon_limit) {
		this.coupon_limit = coupon_limit;
	}
	public Integer getCoupon_discount() {
		return coupon_discount;
	}
	public void setCoupon_discount(Integer coupon_discount) {
		this.coupon_discount = coupon_discount;
	}
	public String getCoupon_regway() {
		return coupon_regway;
	}
	public void setCoupon_regway(String coupon_regway) {
		this.coupon_regway = coupon_regway;
	}
	public Date getCoupon_regdate() {
		return coupon_regdate;
	}
	public void setCoupon_regdate(Date coupon_regdate) {
		this.coupon_regdate = coupon_regdate;
	}
	public Date getCoupon_enddate() {
		return coupon_enddate;
	}
	public void setCoupon_enddate(Date coupon_enddate) {
		this.coupon_enddate = coupon_enddate;
	}
	@Override
	public String toString() {
		return "CouponVO [coupon_no=" + coupon_no + ", coupon_code=" + coupon_code + ", coupon_name=" + coupon_name
				+ ", coupon_filepath=" + coupon_filepath + ", coupon_status=" + coupon_status + ", coupon_type="
				+ coupon_type + ", coupon_limit=" + coupon_limit + ", coupon_discount=" + coupon_discount
				+ ", coupon_regway=" + coupon_regway + ", coupon_regdate=" + coupon_regdate + ", coupon_enddate="
				+ coupon_enddate + "]";
	}
	
	
	
	
}
