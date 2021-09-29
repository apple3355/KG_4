package bucket.kurly.admin.board;


public class Admin_Board_faqVO {
	
	private int board_faq_no;
	private String board_faq_type;
	private String board_faq_title;
	private String board_faq_content;
	
	public int getBoard_faq_no() {
		return board_faq_no;
	}
	public void setBoard_faq_no(int board_faq_no) {
		this.board_faq_no = board_faq_no;
	}
	public String getBoard_faq_type() {
		return board_faq_type;
	}
	public void setBoard_faq_type(String board_faq_type) {
		this.board_faq_type = board_faq_type;
	}
	public String getBoard_faq_title() {
		return board_faq_title;
	}
	public void setBoard_faq_title(String board_faq_title) {
		this.board_faq_title = board_faq_title;
	}
	public String getBoard_faq_content() {
		return board_faq_content;
	}
	public void setBoard_faq_content(String board_faq_content) {
		this.board_faq_content = board_faq_content;
	}
	
	@Override
	public String toString() {
		return "Admin_Board_faqVO [board_faq_no=" + board_faq_no + ", board_faq_type=" + board_faq_type
				+ ", board_faq_title=" + board_faq_title + ", board_faq_content=" + board_faq_content + "]";
	}

}
