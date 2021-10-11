package bucket.kurly.user.order;

public class OrderDetailsVO {
	private String order_details_order_no;
	private int order_details_goods_sell_no;
	private int order_details_goods_count;
	public String getOrder_details_order_no() {
		return order_details_order_no;
	}
	public void setOrder_details_order_no(String order_details_order_no) {
		this.order_details_order_no = order_details_order_no;
	}
	public int getOrder_details_goods_sell_no() {
		return order_details_goods_sell_no;
	}
	public void setOrder_details_goods_sell_no(int order_details_goods_sell_no) {
		this.order_details_goods_sell_no = order_details_goods_sell_no;
	}
	public int getOrder_details_goods_count() {
		return order_details_goods_count;
	}
	public void setOrder_details_goods_count(int order_details_goods_count) {
		this.order_details_goods_count = order_details_goods_count;
	}
	@Override
	public String toString() {
		return "OrderDetailsVO [order_details_order_no=" + order_details_order_no + ", order_details_goods_sell_no="
				+ order_details_goods_sell_no + ", order_details_goods_count=" + order_details_goods_count + "]";
	}
	
}
