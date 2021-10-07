package bucket.kurly.user.goods;

public class Goods_CartShowVO {
	private int goods_cart_no;
	private int goods_sell_no;
	private int goods_sell_stock_ea;
	private int goods_cart_count;
	private int goods_cart_status;
	private String category_goods_image_thumb;
	private String category_goods_name;
	private String category_goods_delivery_type;
	private String category_goods_packaging_type;
	private int goods_sell_price;
	private int goods_sell_discount;
	public int getGoods_cart_no() {
		return goods_cart_no;
	}
	public void setGoods_cart_no(int goods_cart_no) {
		this.goods_cart_no = goods_cart_no;
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
	public int getGoods_cart_count() {
		return goods_cart_count;
	}
	public void setGoods_cart_count(int goods_cart_count) {
		this.goods_cart_count = goods_cart_count;
	}
	public int getGoods_cart_status() {
		return goods_cart_status;
	}
	public void setGoods_cart_status(int goods_cart_status) {
		this.goods_cart_status = goods_cart_status;
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
	public String getCategory_goods_packaging_type() {
		return category_goods_packaging_type;
	}
	public void setCategory_goods_packaging_type(String category_goods_packaging_type) {
		this.category_goods_packaging_type = category_goods_packaging_type;
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
		return "Goods_CartShowVO [goods_cart_no=" + goods_cart_no + ", goods_sell_no=" + goods_sell_no
				+ ", goods_sell_stock_ea=" + goods_sell_stock_ea + ", goods_cart_count=" + goods_cart_count
				+ ", goods_cart_status=" + goods_cart_status + ", category_goods_image_thumb="
				+ category_goods_image_thumb + ", category_goods_name=" + category_goods_name
				+ ", category_goods_delivery_type=" + category_goods_delivery_type + ", category_goods_packaging_type="
				+ category_goods_packaging_type + ", goods_sell_price=" + goods_sell_price + ", goods_sell_discount="
				+ goods_sell_discount + "]";
	}
}
