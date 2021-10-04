package bucket.kurly.admin.member;

import java.util.Date;

public class Admin_Member_DetailsVO {
	
	private int member_no;
	private String member_id;
	private String member_name;
	private String member_phone;
	private String member_email;
	private String member_sex;
	private String member_birth;
	private String member_address1;
	private String member_address2;
	private int member_zipcode;
	private Date member_last_login;
	private String member_rank;
	private int member_point;
	private int member_status;
	private int member_total_cost;
	
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_sex() {
		return member_sex;
	}
	public void setMember_sex(String member_sex) {
		this.member_sex = member_sex;
	}
	public String getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}
	public String getMember_address1() {
		return member_address1;
	}
	public void setMember_address1(String member_address1) {
		this.member_address1 = member_address1;
	}
	public String getMember_address2() {
		return member_address2;
	}
	public void setMember_address2(String member_address2) {
		this.member_address2 = member_address2;
	}
	public int getMember_zipcode() {
		return member_zipcode;
	}
	public void setMember_zipcode(int member_zipcode) {
		this.member_zipcode = member_zipcode;
	}
	public Date getMember_last_login() {
		return member_last_login;
	}
	public void setMember_last_login(Date member_last_login) {
		this.member_last_login = member_last_login;
	}
	public String getMember_rank() {
		return member_rank;
	}
	public void setMember_rank(String member_rank) {
		this.member_rank = member_rank;
	}
	public int getMember_point() {
		return member_point;
	}
	public void setMember_point(int member_point) {
		this.member_point = member_point;
	}
	public int getMember_status() {
		return member_status;
	}
	public void setMember_status(int member_status) {
		this.member_status = member_status;
	}
	public int getMember_total_cost() {
		return member_total_cost;
	}
	public void setMember_total_cost(int member_total_cost) {
		this.member_total_cost = member_total_cost;
	}
	@Override
	public String toString() {
		return "Admin_Member_DetailsVO [member_no=" + member_no + ", member_id=" + member_id + ", member_name="
				+ member_name + ", member_phone=" + member_phone + ", member_email=" + member_email + ", member_sex="
				+ member_sex + ", member_birth=" + member_birth + ", member_address1=" + member_address1
				+ ", member_address2=" + member_address2 + ", member_zipcode=" + member_zipcode + ", member_last_login="
				+ member_last_login + ", member_rank=" + member_rank + ", member_point=" + member_point
				+ ", member_status=" + member_status + ", member_total_cost=" + member_total_cost + "]";
	}
	
	
}	
