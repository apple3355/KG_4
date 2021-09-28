package bucket.kurly.user.member;

public class MemberDetailVO {

	private String member_id;
	private String member_rank;
	private int member_point;
	private int member_status;
	private int member_total_cost;

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
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
		return "MemberDetailVO [member_id=" + member_id + ", member_rank=" + member_rank + ", member_point="
				+ member_point + ", member_status=" + member_status + ", member_total_cost=" + member_total_cost + "]";
	}
}
