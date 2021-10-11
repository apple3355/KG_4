package bucket.kurly.user.order;

public class OrderShowVO {

	private int goods_sell_no;
	private int goods_sell_stock_ea;
	private String category_goods_image_thumb;
	private String category_goods_name;
	private String category_goods_delivery_type;
	private int goods_sell_price;
	private int goods_sell_discount;
	private int order_details_goods_count;
	public int getOrder_details_goods_count() {
		return order_details_goods_count;
	}
	public void setOrder_details_goods_count(int order_details_goods_count) {
		this.order_details_goods_count = order_details_goods_count;
	}
	public int getGoods_sell_no() {
		return goods_sell_no;
	}
	public void setGoods_sell_no(int goods_sell_no) {
		this.goods_sell_no = goods_sell_no;
	}
	public int getGoods_sell_stock_ea() {
		return goods_sell_stock_ea;
	}
	public void setGoods_sell_stock_ea(int goods_sell_stock_ea) {
		this.goods_sell_stock_ea = goods_sell_stock_ea;
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
	public String getCategory_goods_delivery_type() {
		return category_goods_delivery_type;
	}
	public void setCategory_goods_delivery_type(String category_goods_delivery_type) {
		this.category_goods_delivery_type = category_goods_delivery_type;
	}
	public int getGoods_sell_price() {
		return goods_sell_price;
	}
	public void setGoods_sell_price(int goods_sell_price) {
		this.goods_sell_price = goods_sell_price;
	}
	public int getGoods_sell_discount() {
		return goods_sell_discount;
	}
	public void setGoods_sell_discount(int goods_sell_discount) {
		this.goods_sell_discount = goods_sell_discount;
	}
	@Override
	public String toString() {
		return "OrderShowVO [goods_sell_no=" + goods_sell_no + ", goods_sell_stock_ea=" + goods_sell_stock_ea
				+ ", category_goods_image_thumb=" + category_goods_image_thumb + ", category_goods_name="
				+ category_goods_name + ", category_goods_delivery_type=" + category_goods_delivery_type
				+ ", goods_sell_price=" + goods_sell_price + ", goods_sell_discount=" + goods_sell_discount
				+ ", order_details_goods_count=" + order_details_goods_count + "]";
	}
	
	
	
	
}
