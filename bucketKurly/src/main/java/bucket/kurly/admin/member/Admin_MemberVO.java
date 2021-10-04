package bucket.kurly.admin.member;

import java.util.Date;

public class Admin_MemberVO {
	
	private int member_no;
	private String member_id;
	private String member_name;
	private String member_phone;
	private String member_rank;
	private Date member_last_login;
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
	public String getMember_rank() {
		return member_rank;
	}
	public void setMember_rank(String member_rank) {
		this.member_rank = member_rank;
	}
	public Date getMember_last_login() {
		return member_last_login;
	}
	public void setMember_last_login(Date member_last_login) {
		this.member_last_login = member_last_login;
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
		return "Admin_MemberVO [member_no=" + member_no + ", member_id=" + member_id + ", member_name=" + member_name
				+ ", member_phone=" + member_phone + ", member_rank=" + member_rank + ", member_last_login="
				+ member_last_login + ", member_point=" + member_point + ", member_status=" + member_status
				+ ", member_total_cost=" + member_total_cost + "]";
	}
	
	
}
