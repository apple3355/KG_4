package bucket.kurly.admin.statistics;

public class Admin_StatisticsBestVO {
	
	private String category_goods_name;
	private int goods_sell_price;
	private int count_total;
	public String getCategory_goods_name() {
		return category_goods_name;
	}
	public void setCategory_goods_name(String category_goods_name) {
		this.category_goods_name = category_goods_name;
	}
	public int getGoods_sell_price() {
		return goods_sell_price;
	}
	public void setGoods_sell_price(int goods_sell_price) {
		this.goods_sell_price = goods_sell_price;
	}
	public int getCount_total() {
		return count_total;
	}
	public void setCount_total(int count_total) {
		this.count_total = count_total;
	}
	@Override
	public String toString() {
		return "Admin_StatisticsBestVO [category_goods_name=" + category_goods_name + ", goods_sell_price="
				+ goods_sell_price + ", count_total=" + count_total + "]";
	}

}