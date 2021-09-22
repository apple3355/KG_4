package bucket.kurly.board;

import java.util.Date;

public class Board_qnaVO {

	private int board_qna_no;
	private String board_qna_type;
	private String board_qna_title;
	private Date board_qna_regdate;
	private String board_qna_order_no;
	private int board_qna_member_no;
	private String board_qna_writer;
	private String board_qna_email;
	private String board_qna_phone;
	private String board_qna_content;
	private int board_qna_group;
	private int board_qna_gstep;
	
	public int getBoard_qna_no() {
		return board_qna_no;
	}
	public void setBoard_qna_no(int board_qna_no) {
		this.board_qna_no = board_qna_no;
	}
	public String getBoard_qna_type() {
		return board_qna_type;
	}
	public void setBoard_qna_type(String board_qna_type) {
		this.board_qna_type = board_qna_type;
	}
	public String getBoard_qna_title() {
		return board_qna_title;
	}
	public void setBoard_qna_title(String board_qna_title) {
		this.board_qna_title = board_qna_title;
	}
	public Date getBoard_qna_regdate() {
		return board_qna_regdate;
	}
	public void setBoard_qna_regdate(Date board_qna_regdate) {
		this.board_qna_regdate = board_qna_regdate;
	}
	public String getBoard_qna_order_no() {
		return board_qna_order_no;
	}
	public void setBoard_qna_order_no(String board_qna_order_no) {
		this.board_qna_order_no = board_qna_order_no;
	}
	public int getBoard_qna_member_no() {
		return board_qna_member_no;
	}
	public void setBoard_qna_member_no(int board_qna_member_no) {
		this.board_qna_member_no = board_qna_member_no;
	}
	public String getBoard_qna_writer() {
		return board_qna_writer;
	}
	public void setBoard_qna_writer(String board_qna_writer) {
		this.board_qna_writer = board_qna_writer;
	}
	public String getBoard_qna_email() {
		return board_qna_email;
	}
	public void setBoard_qna_email(String board_qna_email) {
		this.board_qna_email = board_qna_email;
	}
	public String getBoard_qna_phone() {
		return board_qna_phone;
	}
	public void setBoard_qna_phone(String board_qna_phone) {
		this.board_qna_phone = board_qna_phone;
	}
	public String getBoard_qna_content() {
		return board_qna_content;
	}
	public void setBoard_qna_content(String board_qna_content) {
		this.board_qna_content = board_qna_content;
	}
	public int getBoard_qna_group() {
		return board_qna_group;
	}
	public void setBoard_qna_group(int board_qna_group) {
		this.board_qna_group = board_qna_group;
	}
	public int getBoard_qna_gstep() {
		return board_qna_gstep;
	}
	public void setBoard_qna_gstep(int board_qna_gstep) {
		this.board_qna_gstep = board_qna_gstep;
	}
	
	@Override
	public String toString() {
		return "Board_qnaVO [board_qna_no=" + board_qna_no + ", board_qna_type=" + board_qna_type + ", board_qna_title="
				+ board_qna_title + ", board_qna_regdate=" + board_qna_regdate + ", board_qna_order_no="
				+ board_qna_order_no + ", board_qna_member_no=" + board_qna_member_no + ", board_qna_writer="
				+ board_qna_writer + ", board_qna_email=" + board_qna_email + ", board_qna_phone=" + board_qna_phone
				+ ", board_qna_content=" + board_qna_content + ", board_qna_group=" + board_qna_group
				+ ", board_qna_gstep=" + board_qna_gstep + "]";
	}


}
