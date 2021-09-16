package bucket.kurly.member;

import java.util.Date;

public class MemberTermsVO {

	private String terms_agree_no; //약관동의 번호
	//약관 일련번호
	private int terms_no;
	//회원 id	
	private String member_id;
	private String terms_agree_status; //약관동의여부
	private Date terms_agree_date; //약관동의일
	private Date terms_agree_modified_date; //약관동의 수정일
	public String getTerms_agree_no() {
		return terms_agree_no;
	}
	public void setTerms_agree_no(String terms_agree_no) {
		this.terms_agree_no = terms_agree_no;
	}
	public int getTerms_no() {
		return terms_no;
	}
	public void setTerms_no(int terms_no) {
		this.terms_no = terms_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getTerms_agree_status() {
		return terms_agree_status;
	}
	public void setTerms_agree_status(String terms_agree_status) {
		this.terms_agree_status = terms_agree_status;
	}
	public Date getTerms_agree_date() {
		return terms_agree_date;
	}
	public void setTerms_agree_date(Date terms_agree_date) {
		this.terms_agree_date = terms_agree_date;
	}
	public Date getTerms_agree_modified_date() {
		return terms_agree_modified_date;
	}
	public void setTerms_agree_modified_date(Date terms_agree_modified_date) {
		this.terms_agree_modified_date = terms_agree_modified_date;
	}
	@Override
	public String toString() {
		return "MemberTermsVO [terms_agree_no=" + terms_agree_no + ", terms_no=" + terms_no + ", member_id=" + member_id
				+ ", terms_agree_status=" + terms_agree_status + ", terms_agree_date=" + terms_agree_date
				+ ", terms_agree_modified_date=" + terms_agree_modified_date + "]";
	}
	
	

}

