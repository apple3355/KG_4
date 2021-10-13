package bucket.kurly.user.board;

public class Board_reviewVO {
	
	private int board_review_no;
	private String board_review_member_id;
	private int board_review_goods_sell_no;
	private String board_review_order_details_no;
	private String board_review_title;
	private String board_review_content;
	private String board_review_date;
	public int getBoard_review_no() {
		return board_review_no;
	}
	public void setBoard_review_no(int board_review_no) {
		this.board_review_no = board_review_no;
	}
	public String getBoard_review_member_id() {
		return board_review_member_id;
	}
	public void setBoard_review_member_id(String board_review_member_id) {
		this.board_review_member_id = board_review_member_id;
	}
	public int getBoard_review_goods_sell_no() {
		return board_review_goods_sell_no;
	}
	public void setBoard_review_goods_sell_no(int board_review_goods_sell_no) {
		this.board_review_goods_sell_no = board_review_goods_sell_no;
	}
	public String getBoard_review_order_details_no() {
		return board_review_order_details_no;
	}
	public void setBoard_review_order_details_no(String board_review_order_details_no) {
		this.board_review_order_details_no = board_review_order_details_no;
	}
	public String getBoard_review_title() {
		return board_review_title;
	}
	public void setBoard_review_title(String board_review_title) {
		this.board_review_title = board_review_title;
	}
	public String getBoard_review_content() {
		return board_review_content;
	}
	public void setBoard_review_content(String board_review_content) {
		this.board_review_content = board_review_content;
	}
	public String getBoard_review_date() {
		return board_review_date;
	}
	public void setBoard_review_date(String board_review_date) {
		this.board_review_date = board_review_date;
	}
	@Override
	public String toString() {
		return "Board_reviewVO [board_review_no=" + board_review_no + ", board_review_member_id="
				+ board_review_member_id + ", board_review_goods_sell_no=" + board_review_goods_sell_no
				+ ", board_review_order_details_no=" + board_review_order_details_no + ", board_review_title="
				+ board_review_title + ", board_review_content=" + board_review_content + ", board_review_date="
				+ board_review_date + "]";
	}
	
	


}