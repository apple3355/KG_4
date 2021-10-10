package bucket.kurly.user.goods;

public class Goods_CartVO {
	private int goods_cart_no;		// 장바구니 시퀀스 번호
	private int goods_cart_sell_no;	// 판매테이블 번호
	private int goods_cart_member_no;	// 회원번호 --> 회원아이디로 수정 예정
	private int goods_cart_count;	// 물품 구매 갯수
	private String goods_cart_status;	// 물품 주문상태
	
	private Goods_SellVO goods_sellvo;
	
	public int getGoods_cart_no() {
		return goods_cart_no;
	}
	public void setGoods_cart_no(int goods_cart_no) {
		this.goods_cart_no = goods_cart_no;
	}
	public int getGoods_cart_sell_no() {
		return goods_cart_sell_no;
	}
	public void setGoods_cart_sell_no(int goods_cart_sell_no) {
		this.goods_cart_sell_no = goods_cart_sell_no;
	}
	public int getGoods_cart_member_no() {
		return goods_cart_member_no;
	}
	public void setGoods_cart_member_no(int goods_cart_member_no) {
		this.goods_cart_member_no = goods_cart_member_no;
	}
	public int getGoods_cart_count() {
		return goods_cart_count;
	}
	public void setGoods_cart_count(int goods_cart_count) {
		this.goods_cart_count = goods_cart_count;
	}
	public String getGoods_cart_status() {
		return goods_cart_status;
	}
	public void setGoods_cart_status(String goods_cart_status) {
		this.goods_cart_status = goods_cart_status;
	}
	
	public Goods_SellVO getGoods_sellvo() {
		return goods_sellvo;
	}
	public void setGoods_sellvo(Goods_SellVO goods_sellvo) {
		this.goods_sellvo = goods_sellvo;
	}
	
	@Override
	public String toString() {
		return "Goods_CartVO [goods_cart_no=" + goods_cart_no + ", goods_cart_sell_no=" + goods_cart_sell_no
				+ ", goods_cart_member_no=" + goods_cart_member_no + ", goods_cart_count=" + goods_cart_count
				+ ", goods_cart_status=" + goods_cart_status + ", goods_sellvo=" + goods_sellvo + "]";
	}
	
}