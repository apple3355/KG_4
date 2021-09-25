package bucket.kurly.user.goods;

public class Goods_CartVO {
	private int goods_cart_no;
	private String goods_cart_parent_no;
	private String goods_cart_sub_no;
	private String goods_cart_goods_no;
	private String goods_cart_sell_no;
	private int goods_cart_member_no;
	private String goods_cart_delivery_type;
	private String goods_cart_image_url;
	private String goods_cart_name;
	private int goods_cart_count;
	private int goods_cart_price;
	private int goods_cart_status;
	public int getGoods_cart_no() {
		return goods_cart_no;
	}
	public void setGoods_cart_no(int goods_cart_no) {
		this.goods_cart_no = goods_cart_no;
	}
	public String getGoods_cart_parent_no() {
		return goods_cart_parent_no;
	}
	public void setGoods_cart_parent_no(String goods_cart_parent_no) {
		this.goods_cart_parent_no = goods_cart_parent_no;
	}
	public String getGoods_cart_sub_no() {
		return goods_cart_sub_no;
	}
	public void setGoods_cart_sub_no(String goods_cart_sub_no) {
		this.goods_cart_sub_no = goods_cart_sub_no;
	}
	public String getGoods_cart_goods_no() {
		return goods_cart_goods_no;
	}
	public void setGoods_cart_goods_no(String goods_cart_goods_no) {
		this.goods_cart_goods_no = goods_cart_goods_no;
	}
	public String getGoods_cart_sell_no() {
		return goods_cart_sell_no;
	}
	public void setGoods_cart_sell_no(String goods_cart_sell_no) {
		this.goods_cart_sell_no = goods_cart_sell_no;
	}
	public int getGoods_cart_member_no() {
		return goods_cart_member_no;
	}
	public void setGoods_cart_member_no(int goods_cart_member_no) {
		this.goods_cart_member_no = goods_cart_member_no;
	}
	public String getGoods_cart_delivery_type() {
		return goods_cart_delivery_type;
	}
	public void setGoods_cart_delivery_type(String goods_cart_delivery_type) {
		this.goods_cart_delivery_type = goods_cart_delivery_type;
	}
	public String getGoods_cart_image_url() {
		return goods_cart_image_url;
	}
	public void setGoods_cart_image_url(String goods_cart_image_url) {
		this.goods_cart_image_url = goods_cart_image_url;
	}
	public String getGoods_cart_name() {
		return goods_cart_name;
	}
	public void setGoods_cart_name(String goods_cart_name) {
		this.goods_cart_name = goods_cart_name;
	}
	public int getGoods_cart_count() {
		return goods_cart_count;
	}
	public void setGoods_cart_count(int goods_cart_count) {
		this.goods_cart_count = goods_cart_count;
	}
	public int getGoods_cart_price() {
		return goods_cart_price;
	}
	public void setGoods_cart_price(int goods_cart_price) {
		this.goods_cart_price = goods_cart_price;
	}
	public int getGoods_cart_status() {
		return goods_cart_status;
	}
	public void setGoods_cart_status(int goods_cart_status) {
		this.goods_cart_status = goods_cart_status;
	}
	@Override
	public String toString() {
		return "Goods_CartVO [goods_cart_no=" + goods_cart_no + ", goods_cart_parent_no=" + goods_cart_parent_no
				+ ", goods_cart_sub_no=" + goods_cart_sub_no + ", goods_cart_goods_no=" + goods_cart_goods_no
				+ ", goods_cart_sell_no=" + goods_cart_sell_no + ", goods_cart_member_no=" + goods_cart_member_no
				+ ", goods_cart_delivery_type=" + goods_cart_delivery_type + ", goods_cart_image_url="
				+ goods_cart_image_url + ", goods_cart_name=" + goods_cart_name + ", goods_cart_count="
				+ goods_cart_count + ", goods_cart_price=" + goods_cart_price + ", goods_cart_status="
				+ goods_cart_status + "]";
	}

}