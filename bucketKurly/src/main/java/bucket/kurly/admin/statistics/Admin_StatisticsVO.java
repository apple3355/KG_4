package bucket.kurly.admin.statistics;

public class Admin_StatisticsVO {
	
	private String member_rank;
	private int member_rank_total;
	public String getMember_rank() {
		return member_rank;
	}
	public void setMember_rank(String member_rank) {
		this.member_rank = member_rank;
	}
	public int getMember_rank_total() {
		return member_rank_total;
	}
	public void setMember_rank_total(int member_rank_total) {
		this.member_rank_total = member_rank_total;
	}
	@Override
	public String toString() {
		return "Admin_StatisticsVO [member_rank=" + member_rank + ", member_rank_total=" + member_rank_total + "]";
	}

}
