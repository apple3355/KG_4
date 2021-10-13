package bucket.kurly.user.order;

public class OrderVO {
	private String  order_no;
	private String  order_name;
	private int  order_member_no;
	private String order_date;
	private String  order_phone;
	private String  order_address;
	private int  order_goods_count;
	private int  order_goods_price;
	private int  order_delivery_fee;
	private int  order_coupon_no;
	private String order_merchant_no;
	private String order_delivery_status;
	private String category_goods_image_thumb;
	private String category_goods_name;
	public String getOrder_no() {
		return order_no;
	}
	public void setOrder_no(String order_no) {
		this.order_no = order_no;
	}
	public String getOrder_name() {
		return order_name;
	}
	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}
	public int getOrder_member_no() {
		return order_member_no;
	}
	public void setOrder_member_no(int order_member_no) {
		this.order_member_no = order_member_no;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public String getOrder_phone() {
		return order_phone;
	}
	public void setOrder_phone(String order_phone) {
		this.order_phone = order_phone;
	}
	public String getOrder_address() {
		return order_address;
	}
	public void setOrder_address(String order_address) {
		this.order_address = order_address;
	}
	public int getOrder_goods_count() {
		return order_goods_count;
	}
	public void setOrder_goods_count(int order_goods_count) {
		this.order_goods_count = order_goods_count;
	}
	public int getOrder_goods_price() {
		return order_goods_price;
	}
	public void setOrder_goods_price(int order_goods_price) {
		this.order_goods_price = order_goods_price;
	}
	public int getOrder_delivery_fee() {
		return order_delivery_fee;
	}
	public void setOrder_delivery_fee(int order_delivery_fee) {
		this.order_delivery_fee = order_delivery_fee;
	}
	public int getOrder_coupon_no() {
		return order_coupon_no;
	}
	public void setOrder_coupon_no(int order_coupon_no) {
		this.order_coupon_no = order_coupon_no;
	}
	public String getOrder_merchant_no() {
		return order_merchant_no;
	}
	public void setOrder_merchant_no(String order_merchant_no) {
		this.order_merchant_no = order_merchant_no;
	}
	public String getOrder_delivery_status() {
		return order_delivery_status;
	}
	public void setOrder_delivery_status(String order_delivery_status) {
		this.order_delivery_status = order_delivery_status;
	}
	public String getCategory_goods_image_thumb() {
		return category_goods_image_thumb;
	}
	public void setCategory_goods_image_thumb(String category_goods_image_thumb) {
		this.category_goods_image_thumb = category_goods_image_thumb;
	}
	public String getCategory_goods_name() {
		return category_goods_name;
	}
	public void setCategory_goods_name(String category_goods_name) {
		this.category_goods_name = category_goods_name;
	}
	@Override
	public String toString() {
		return "OrderVO [order_no=" + order_no + ", order_name=" + order_name + ", order_member_no=" + order_member_no
				+ ", order_date=" + order_date + ", order_phone=" + order_phone + ", order_address=" + order_address
				+ ", order_goods_count=" + order_goods_count + ", order_goods_price=" + order_goods_price
				+ ", order_delivery_fee=" + order_delivery_fee + ", order_coupon_no=" + order_coupon_no
				+ ", order_merchant_no=" + order_merchant_no + ", order_delivery_status=" + order_delivery_status
				+ ", category_goods_image_thumb=" + category_goods_image_thumb + "]";
	}
	
	
	
	
	
}
