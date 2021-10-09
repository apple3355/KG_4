package bucket.kurly.user.goods;

public class Goods_ListDTO {
	
	private String select_type;
	private String select_type2;
	private String goods_sell_parent_no;
	private String goods_sell_sub_no;
	
	public String getSelect_type() {
		return select_type;
	}
	public void setSelect_type(String select_type) {
		this.select_type = select_type;
	}
	public String getSelect_type2() {
		return select_type2;
	}
	public void setSelect_type2(String select_type2) {
		this.select_type2 = select_type2;
	}
	public String getGoods_sell_parent_no() {
		return goods_sell_parent_no;
	}
	public void setGoods_sell_parent_no(String goods_sell_parent_no) {
		this.goods_sell_parent_no = goods_sell_parent_no;
	}
	public String getGoods_sell_sub_no() {
		return goods_sell_sub_no;
	}
	public void setGoods_sell_sub_no(String goods_sell_sub_no) {
		this.goods_sell_sub_no = goods_sell_sub_no;
	}
	@Override
	public String toString() {
		return "Goods_ListDTO [select_type=" + select_type + ", select_type2=" + select_type2
				+ ", goods_sell_parent_no=" + goods_sell_parent_no + ", goods_sell_sub_no=" + goods_sell_sub_no + "]";
	}
	
	
	
}
