package bucket.kurly.admin.statistics;

public class Admin_StatisticsVO {
	
	private String member_rank;
	private int member_rank_total;
	private String order_date;
	private int order_total;
	private int revenue_total;
	private String to_char; //월별날짜
	
	
	public String getTo_char() {
		return to_char;
	}
	public void setTo_char(String to_char) {
		this.to_char = to_char;
	}
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
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public int getOrder_total() {
		return order_total;
	}
	public void setOrder_total(int order_total) {
		this.order_total = order_total;
	}
	public int getRevenue_total() {
		return revenue_total;
	}
	public void setRevenue_total(int revenue_total) {
		this.revenue_total = revenue_total;
	}
	@Override
	public String toString() {
		return "Admin_StatisticsVO [member_rank=" + member_rank + ", member_rank_total=" + member_rank_total
				+ ", order_date=" + order_date + ", order_total=" + order_total + ", revenue_total=" + revenue_total
				+ ", to_char=" + to_char + "]";
	}
}
