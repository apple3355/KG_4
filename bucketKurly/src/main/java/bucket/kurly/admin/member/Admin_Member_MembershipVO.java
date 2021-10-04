package bucket.kurly.admin.member;

public class Admin_Member_MembershipVO {
	
	private int member_membership_no;
	private String member_membership_name;
	private int member_membership_savemoney;
	private int member_membership_performance;
	
	public int getMember_membership_no() {
		return member_membership_no;
	}
	public void setMember_membership_no(int member_membership_no) {
		this.member_membership_no = member_membership_no;
	}
	public String getMember_membership_name() {
		return member_membership_name;
	}
	public void setMember_membership_name(String member_membership_name) {
		this.member_membership_name = member_membership_name;
	}
	public int getMember_membership_savemoney() {
		return member_membership_savemoney;
	}
	public void setMember_membership_savemoney(int member_membership_savemoney) {
		this.member_membership_savemoney = member_membership_savemoney;
	}
	public int getMember_membership_performance() {
		return member_membership_performance;
	}
	public void setMember_membership_performance(int member_membership_performance) {
		this.member_membership_performance = member_membership_performance;
	}
	
	@Override
	public String toString() {
		return "Admin_Member_MembershipVO [member_membership_no=" + member_membership_no + ", member_membership_name="
				+ member_membership_name + ", member_membership_savemoney=" + member_membership_savemoney
				+ ", member_membership_performance=" + member_membership_performance + "]";
	}

}
