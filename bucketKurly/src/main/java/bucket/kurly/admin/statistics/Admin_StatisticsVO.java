package bucket.kurly.admin.statistics;

import java.util.Date;

public class Admin_StatisticsVO {
	
	private Date startdate_daily;
	private Date enddate_daily;
	private Date startdate_monthly;
	private Date enddate_monthly;
	

	public Date getStartdate_daily() {
		return startdate_daily;
	}
	public void setStartdate_daily(Date startdate_daily) {
		this.startdate_daily = startdate_daily;
	}
	public Date getEnddate_daily() {
		return enddate_daily;
	}
	public void setEnddate_daily(Date enddate_daily) {
		this.enddate_daily = enddate_daily;
	}
	public Date getStartdate_monthly() {
		return startdate_monthly;
	}
	public void setStartdate_monthly(Date startdate_monthly) {
		this.startdate_monthly = startdate_monthly;
	}
	public Date getEnddate_monthly() {
		return enddate_monthly;
	}
	public void setEnddate_monthly(Date enddate_monthly) {
		this.enddate_monthly = enddate_monthly;
	}

	private String member_rank;
	private int member_rank_total;
	private String order_date;
	private int order_total;
	private int revenue_total;
	
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
		return "Admin_StatisticsVO [startdate_daily=" + startdate_daily + ", enddate_daily=" + enddate_daily
				+ ", startdate_monthly=" + startdate_monthly + ", enddate_monthly=" + enddate_monthly + ", member_rank="
				+ member_rank + ", member_rank_total=" + member_rank_total + ", order_date=" + order_date
				+ ", order_total=" + order_total + ", revenue_total=" + revenue_total + "]";
	}
	
	

}
